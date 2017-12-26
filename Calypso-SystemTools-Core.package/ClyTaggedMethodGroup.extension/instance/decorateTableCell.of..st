*Calypso-SystemTools-Core
decorateTableCell: anItemCellMorph of: groupItem
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	(name beginsWith: 'private') ifTrue: [ 
		^anItemCellMorph definitionIcon: #protocolPrivateIcon ].
	
	(#('initial' 'releaz' 'releas' 'finali') 
		anySatisfy: [ :each | name beginsWith: each ])
			ifTrue: [ anItemCellMorph definitionIcon: #protocolProtectedIcon]	