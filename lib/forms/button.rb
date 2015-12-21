module Forms
  
  class Button
    def initialize(value) 
	  @value = value
	end	
	
	def valid? 
      @value.nil?
	end
	
	def to_s
	  puts "<input type=\"submit\" value=\"#{@value}\">"
	end
	
  end  
end	