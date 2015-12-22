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
  def to_s
    if valid?
      puts "<input type=\"text\" name=\"#{@name}\"></input>"
    else
      puts "Error, you probably forgot a parameter (name, value, checked and text)"
    end
  end
  end
end
