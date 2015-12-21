module Forms

  class Checkbox
    def initialize(name, value, checked, text) 
	  @name = name
	  @value = value
	  @checked = checked
	  @text = text
	end	
	
	def valid? 
      @name.nil? && @value.nil? && @checked.nil? && @text.nil?
	end
	
	def to_s 
	  puts "<input type=\"checkbox\" name=\"#{@name}\" value=\"#{@value}\" #{@checked}>#{@text}<br>"
	end
	
  end  
end	

