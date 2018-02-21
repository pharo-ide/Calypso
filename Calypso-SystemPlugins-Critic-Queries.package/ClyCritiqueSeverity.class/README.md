I represent first class severity levels of critiques.
There are three of them: information, warning, error. 

You can get me from critique using: 
	
	ClyCrituqueSeverity of: aCritiques.
	
I provide name and color for the UI. And I allow to sort critiques by severity using my method #isMoreImportantThan:. 

Internal Representation and Key Implementation Points.

    Instance Variables
	color:		<Color>
	name:		<String>