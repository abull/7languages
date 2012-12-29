#Enhance the XML program to add spaces to show the indentation structure.
#Enhance the XML program to handle attributes: if the first argument is a map (use the curly brackets syntax), add attributes to the XML program. For example:
#book({"author": "Tate"}...) would print <book author="Tate">:
OperatorTable addAssignOperator(":", "atParseHash")

Map 	atParseHash := method(
  key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
	value := call evalArgAt(1)
	" #{key}=\"#{value}\"" interpolate
)
	

Builder := Object clone do(
  indent := ""
	
  forward := method(
    write(indent)
    writeln("<", call message name, ">")

    call message arguments foreach(arg,
			arg println
      builder := self clone
      builder indent = "#{self indent}  " interpolate
      content := builder doMessage(arg);
      if(content type == "Sequence",
        write(indent)
        write("  ")
        writeln(content)
      )
    )

    write(indent)
    writeln("</", call message name, ">")
  )

  curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
      r doMessage(arg)
    )
    r
  )
)
# We have to do this through a separate file for the operator table changes to take effect.
doFile("build_stuff.io")

#Create a list syntax that uses brackets.

Object squareBrackets := method(
  r := List clone;
  "foo" println;
  call message arguments foreach(arg,
    r append(arg);
  )
  r;
)

[1,2] println