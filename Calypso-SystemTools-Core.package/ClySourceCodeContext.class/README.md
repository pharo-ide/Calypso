I am context of source code editor tool.
I am based on the ast of editing code.

I provide following interface to query code editor state. It is polymorphic to system browser context:

- selectedClasses 
- lastSeletedClass 
- isClassSelected 

- selectedMethods
- lastSelectedMethod 
- isMethodSelected 

- selectedMessages
- lastSelectedMessage 
- isMessageSelected 

- selectedVariables
- lastSelectedVariable
- isVariableSelected
- isTempVariableSelected 

Internal Representation and Key Implementation Points.

    Instance Variables
	selectedSourceNode:		<RBProgramNode>