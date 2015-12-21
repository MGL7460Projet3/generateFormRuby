require_relative 'spec-helper'
require 'forms'

module Forms
	describe Input do
		before do
			@input = Input.new("input1")		
		end
		describe "Un input construit correctement" do

			it "retourne le bon name" do
				@input.name.must_equal "input1"
			end
			it "est valide" do
				assert @input.valid?
			end
		end
		describe "Un input invalide " do
			it "est invalide si le name n’est pas definie" do
				@input.name = nil
				refute @input.valid?
			end
		end
	end
end