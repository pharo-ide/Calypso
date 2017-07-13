*Calypso-Plugins-Critic-Browser
decorateTableCell: anItemCellMorph of: groupItem
	| icon |
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	(groupItem isMarkedWith: ClyBackgroundProcessingTag) 
		ifTrue: [ 
			icon := anItemCellMorph definitionMorph: ClyActivityAnimationIconMorph new ]
		ifFalse: [ anItemCellMorph definitionIcon: #smallDebug  ]