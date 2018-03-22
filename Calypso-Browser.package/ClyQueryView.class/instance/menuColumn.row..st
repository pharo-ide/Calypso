menu building
menuColumn: column row: rowIndex
	
	| menuSelection context |
	menuSelection := self grabSelectionAt: rowIndex.
		
	context := self createSelectionContextOf: menuSelection.
	
	^CmdContextMenuCommandActivation buildContextMenuFor: self inContext: context