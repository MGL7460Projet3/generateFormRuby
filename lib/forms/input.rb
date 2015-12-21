module Forms

  class Input
  
    def initialize(name)
      @name = name
    end
	
	def valid? 
      @name.nil?
	end
	
    def to_s
	  puts "<input type=\"text\" name=\"#{@name}\"></input>"
	end
	  
  end
end	