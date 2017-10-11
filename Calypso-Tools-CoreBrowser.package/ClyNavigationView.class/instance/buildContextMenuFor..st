menu building
buildContextMenuFor: aSelection

	| context |
	context := self createSelectionContextOf: aSelection.
	
	^CmdContextMenuCommandActivation buildMenuFor: self inContext: context