building
addItemFor: aClass depth: hierarchyDepth

	| group item vars |	
	(vars := self variablesDeclaredIn: aClass) ifEmpty: [ ^self ].
	
	group := ClyVarsDeclarationMethodGroup 
		variables: vars declaredIn: aClass classes: rootClasses.
	item := group asCalypsoBrowserItem.
	item depth: 0. "We not expose hierarchy of classes. It will be shown just from top to down list without identation"
	item localHierarchySize: vars size.
	items add: item