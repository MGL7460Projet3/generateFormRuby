$LOAD_PATH.unshift('.', 'lib')

require '.Form'
include Form

form1 =
  Form( "post","/" ).
    label( "label1" ).
    input( "input1" ).
	label( "label2" ).
    input( "input2" ).
    checkbox( "checkbox1", "checkbox1", "checked", "checkbox1" ).
    checkbox( "checkbox2", "checkbox2", "", "checkbox2" ).
    button( "submit" )

#puts form1.to_s

File.open("formulaire.html", "w") do |out|
   out << form1.to_s
end
