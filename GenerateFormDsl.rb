
# Generate html Form
# Module allowing to define attributes.
# attributes :foo will create a foo method with a param, setting @foo
#
#
module WithAttributes
  def attributes(*args)
    args.each do |attribute|
      define_method(attribute) do |value|
        # use attr_ prefix to be able to filter these var later.
        instance_variable_set "@attr_#{attribute}", value
      end   
    end
  end
end

#
# Default element. 
#
class Element
  extend WithAttributes
  attributes :id

  def initialize(&block)
    @childs = []
    instance_eval(&block) if block_given?
  end

  def to_html
    tag = self.class.to_s.downcase

    str = @childs.inject("<#{tag}#{attributes}>") do |acc, child|
      acc << child.to_html
      acc
    end + "</#{tag}>"
  end

  def attributes
    instance_variables.select { |v| v.to_s.match(/^@attr_/) }.inject("") do |acc, a|
      name  = a.to_s
      name.slice!('@attr_')
      value = instance_variable_get(a)
      acc << " #{name}=\"#{value}\""
    end
  end
end

class Form < Element
  attributes :method, :action

  def p(&block)
    @childs << P.new(&block)
  end
  def input(&block)
    @childs << Input.new(&block)
  end
end

class P < Element
  def input(&block)
    @childs << Input.new(&block)
  end
end

class Input < Element
  attributes :type, :name
end

class Input < Element
  attributes :type, :value
end

f = Form.new do
  method "post"
  action "/"
  p do
    id "my_firstname"
    input do
      type "text"
      name "firstname"
    end
  end
  p do
    id "my_lastname"
    input do
      type "text"
      name "lastname"
    end
  end
  input do
    type "submit"
    value "submit" 
  end    
end

#puts f.to_html

File.open("form.html", "w") do |out|
   out << f.to_html
end