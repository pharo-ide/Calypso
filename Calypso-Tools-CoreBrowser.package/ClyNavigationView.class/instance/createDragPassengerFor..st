drag and drop support
createDragPassengerFor: aSelection
	| context |
	context := browser createContextOf: aSelection. 
	
	^CmdDragAndDropCommandActivation createDragPassengerInContext: context