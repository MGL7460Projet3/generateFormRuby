module Forms

  class Input

    def initialize(name)
      @name = name
    end

	def valid?
      @name.nil?
	end

  def to_s
    if valid?
      puts "<input type=\"text\" name=\"#{@name}\"></input>"
    else
      puts "Error, You didn't specify a name for this input!"
    end
	end

  end
end
