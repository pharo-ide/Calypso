I am a base class for method edito tools.

I implement correctly the styling of typed source code. 
Also I add multiple text editing tools to the status bar: 
- wrap mode switch 
- line number=s switch
- format as you read 
- method tags and package editor.

In addition to the superclass abstract methods subclasses should implement following methods: 

- methodClass 
Subclasses should decide what class will accept editing method

- modifiesExtension 
Subclasses should detect that editing method is going to be extension.

Internal Representation and Key Implementation Points.

    Instance Variables
	extendingPackage:		<RPackage>
	methodTags:		<Array of<Symbol>>