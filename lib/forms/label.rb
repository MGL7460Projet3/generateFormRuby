module Forms

  class Label

    def initialize(text)
	  @text = text
  	end

  	def valid?
        @text.nil?
  	end
    
    def to_s
      if valid?
        puts "<label>#{@text}</label>"
      else
        puts "Error, You didn't specify a text for this label!"
      end
  	end

  end
end
