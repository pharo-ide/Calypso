navigation
selectMethod: aMethod

	| foundItems |
	self changeNavigationStateBy: [
		foundItems := methodView dataSource findItemsWith: { aMethod }.
		foundItems ifNotEmpty: [ ^self selectedMethods selectItems: foundItems ].
	
		self selectClass: aMethod origin.
		self selectedClasses isEmpty ifTrue: [ ^self ].
		self selectedMethodGroups beEmpty.
		self selectedMethods selectItemsWith: {aMethod}
	]