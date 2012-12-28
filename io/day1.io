//Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
// Strongly typed, observe:
1 + 1
try(1 + nil) catch(Exception, "Io is strongly typed\n" print)
// the error that is produced indicates that nil is not of the correct type

"\n" print

//Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
if(0) then(
"0 is true\n" print
) else(
"0 is false\n" print
)

if("") then(
"the empty string is true\n" print
) else(
"the empty string is false\n" print
)

if(nil) then(
"nil is true\n" print
) else(
"nil is false\n" print
)

"\n" print
//How can you tell what slots a prototype supports? - call print on the object
Object slotNames print
//What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
// = assigns to a slot, use it to change the value of a slot
// := creates and assigns a slot, use it to create a new slot
// ::== creates and assigns a new slot and creates a setter for that object, use it similar to the way you would use attr_accessor

"\n\n" print

//Execute the code in a slot given its name.
Dog := Object clone
Dog bark := method("woof" print)

Dog getSlot("bark") call