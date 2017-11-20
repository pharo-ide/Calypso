*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| definition |
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph definitionIcon: #protocolExtensionIcon.
		
	(anItemCellMorph browser isPackagePartOfSelection: self package)
		ifTrue: [ anItemCellMorph nameMorph emphasis: TextEmphasis bold emphasisCode]
		ifFalse: [ anItemCellMorph nameMorph color: Smalltalk ui theme classExtensionColor].