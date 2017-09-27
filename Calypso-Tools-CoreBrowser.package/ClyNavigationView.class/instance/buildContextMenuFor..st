menu building
buildContextMenuFor: aSelection

	| context |
	context := browser createContextOf: aSelection.
	
	^CmdContextMenuCommandActivation buildMenuFor: self inContext: context