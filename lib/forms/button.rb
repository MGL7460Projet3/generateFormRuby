module Forms

  class Button
    def initialize(value)
	  @value = value
	end

	def valid?
      @value.nil?
	end

	def to_s

	end
  def to_s
    if valid?
      puts "<input type=\"submit\" value=\"#{@value}\">"
    else
      puts "Error, You didn't specify a value for this input!"
    end
  end
  end
end
