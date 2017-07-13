menu building
buildContextMenuFor: aSelection

	| context |
	context := browser createContextOf: aSelection.
	
	^CmdContextMenuCommandActivator buildMenuFor: self inContext: context