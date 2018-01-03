decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	| method button |
	method := aDataSourceItem actualObject.
	
	button := self nautilusMethodWidget methodIconFor: method.
	button == self emptyActionIcon ifTrue: [ ^self ].
	(self isAbstractAction: button) ifTrue: [ ^self ].
	(self isTestAction: button)	ifTrue: [ ^self ]. 
	(self isOverridesAction: button) ifTrue: [ ^self ].

	anItemCellMorph definitionMorph: button asMorph