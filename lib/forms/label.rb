module Forms

  class Label
  
    def initialize(text) 
	  @text = text
	end	
	
	def valid? 
      @text.nil?
	end
	
	def to_s
	  puts "<label>#{@text}</label>"
	end
	
  end
end	