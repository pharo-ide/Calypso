decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| method button |
	method := aDataSourceItem actualObject.
	
	button := self nautilusMethodWidget methodIconFor: method.
	button == self emptyActionIcon ifTrue: [ ^self ].
	((button isKindOf: IconicButton) and: [ button actionSelector == #runTestForAMethod:notifying:])
		ifTrue: [ ^self ]. 
		
	anItemCellMorph definitionMorph: button asMorph