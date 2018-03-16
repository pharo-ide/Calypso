*Calypso-SystemTools-Core
decorateTableCell: anItemCellMorph of: groupItem
	| myName |
	super decorateTableCell: anItemCellMorph of: groupItem.
	myName := name asLowercase.
	(myName beginsWith: 'private') ifTrue: [ 
		^anItemCellMorph definitionIcon: #protocolPrivateIcon ].
	
	(#('initial' 'class initial' 'releaz' 'releas' 'finali') 
		anySatisfy: [ :each | myName beginsWith: each ])
			ifTrue: [ anItemCellMorph definitionIcon: #protocolProtectedIcon]	