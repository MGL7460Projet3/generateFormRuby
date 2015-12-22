module Forms
  class Form

    #
    # Methodes specifiques au DSL.
    #
     def initialize( method, action, &block )
      form = Form.new( method, action )
      if block_given?
        form.instance_eval &block
      end
      form	  
    end	

    def input( name )
      @elements << input.new( name )
      self
    end
    alias :autreinput :input
	
    def label( text )
      @elements << input.new( text )
      self
    end
    alias :autrelabel :label
	
	def checkbox( name )
      @elements << checkbox.new( name, value, checked, text )
      self
    end
    alias :autrecheckbox :checkbox
	
	def button( value )
      @elements << button.new( value )
      self
    end
    alias :autrebutton :button

  end
end