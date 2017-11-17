*Calypso-Plugins-Critic-Browser
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	| icon |
	super decorateMethodGroupTableCell: anItemCellMorph of: groupItem.
	
	(groupItem isMarkedWith: ClyBackgroundProcessingTag) 
		ifTrue: [ 
			icon := anItemCellMorph definitionMorph: ClyActivityAnimationIconMorph new ]
		ifFalse: [ anItemCellMorph definitionIcon: #smallDebug  ]