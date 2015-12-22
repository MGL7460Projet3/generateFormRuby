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
			if valid?
				puts "<!DOCTYPE html>"
				puts "<html>"
				puts "<body>"
				puts "#{'<form method="'}#{@method}#{'" action="'}#{@action}#{'">'}"
				elems = @elements.map {|elem| elem.to_s }.join("\n  ")
				puts "#{'</form>'}"
				puts "</body>"
				puts "</html>"
			end
			else
				puts "There is an error"
			end
		end

		def valid?
		@method.nil? && @action.nil?
		!@elements.empty? && @elements.all? { |element| element.valid? "ok" : puts element.to_s }
		end

   	    #
		# Methodes specifiques au DSL.
		#


	end
end
