*Calypso-Tools-SystemBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| definition |
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph definitionIcon: #protocolExtensionIcon.
	
	definition :=  groupItem getProperty: ClyExtendedClassDefinitionProperty.
		
	(anItemCellMorph browser isPackagePartOfSelection: definition definitionPackage)
		ifTrue: [ anItemCellMorph nameMorph emphasis: TextEmphasis bold emphasisCode]
		ifFalse: [ anItemCellMorph nameMorph color: Smalltalk ui theme classExtensionColor].