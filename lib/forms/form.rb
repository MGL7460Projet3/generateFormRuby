require 'dbc'

module Forms

	class Form
		attr_reader :method, :action, :elements
		def initialize(method, action, elements)
			@method = method
			@action = action
			@elements = elements
		end
		
		def add_element(element)
			@elements << element
		end
		
		def to_s 
			puts "<!DOCTYPE html>"
			puts "<html>"
			puts "<body>"
			puts "#{'<form method="'}#{@method}#{'" action="'}#{@action}#{'">'}"
			elems = @elements.map {|elem| elem.to_s }.join("\n  ")
			puts "#{'</form>'}"	
			puts "</body>"
			puts "</html>"
		end		
	  
		def valid? 
		@method.nil? && @action.nil?
		!@elements.empty? && @elements.all? { |element| element.valid?
		end
	 
   	    #
		# Methodes specifiques au DSL.
		#

		
	end
end
