require_relative 'spec-helper'
require 'forms'

module Forms
	describe Form do
		before do
			@label1 = Label.new("label1")		
			@input1 = Input.new("input1")	
			@label2 = Label.new("label2")		
			@input2 = Input.new("input2")				
			@checkbox1 = Checkbox.new( "checkbox1", "checkbox1", "checked", "checkbox1")
			@checkbox2 = Checkbox.new( "checkbox2", "checkbox2", "", "checkbox2")	
			@button = Button.new("button")			
			@form = Form.new("post", "/")
			@form.add_element(@labl1)
			@form.add_element(@input1)
			@form.add_element(@labl2)
			@form.add_element(@input)
			@form.add_element(@checkbox1)
			@form.add_element(@checkbox1)
			@form.add_element(@button)

		end
		describe "Un formlaire correctement construit " do
			it "a une method " do
				@form.method.must_equal "post"
			end
			it "a une action" do
				@form.action.must_equal "/"
			end
			it "possede deux label" do
				@form.elements[0].must_equal[@label1]
				@form.elements[2].must_equal[@label2]
			end
			it "possede deux input" do
				@form.elements[1].must_equal[@input1]
				@form.elements[3].must_equal[@input2]
			end
			it "possede deux checkbox" do
				@form.elements[4].must_equal[@checkbox1]
				@form.elements[5].must_equal[@checkbox2]
			end
			it "possede un button" do
				@form.elements[6].must_equal[@button]
			end
			it "est valide" do
				assert @form.valid?
			end
		end
	end
end