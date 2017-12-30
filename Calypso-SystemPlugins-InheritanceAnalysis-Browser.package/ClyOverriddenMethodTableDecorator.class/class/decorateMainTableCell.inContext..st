decoration
decorateMainTableCell: anItemCellMorph inContext: itemContext 
	
	| commands |
	commands := OrderedCollection new: 2.
	(itemContext lastSelectedItem isMarkedWith: ClyOverriddenTag) ifTrue: [ 
		commands add: ClyShowOverridingMethodsCommand new].
	(itemContext lastSelectedItem isMarkedWith: ClyOverrideTag) ifTrue: [ 
		commands add: ClyShowOverriddenMethodsCommand new].
	
	self decorateTableCell: anItemCellMorph withCommands: commands inContext: itemContext