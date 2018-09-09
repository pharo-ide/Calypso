drag and drop support
createDragPassengerFor: aSelection
	| context |
	context := self createSelectionContextOf: aSelection. 
	
	^CmdDragAndDropActivation createDragPassengerInContext: context