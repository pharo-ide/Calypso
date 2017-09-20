*Calypso-SystemTools-PackageBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| tool |
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	(groupItem isMarkedWith: ClyTraitTag) ifTrue: [ 
		anItemCellMorph addExtraIcon: #trait]. 

	tool := anItemCellMorph definitionMorph: (ClyMethodVisibilityMorph on: groupItem).
	tool build