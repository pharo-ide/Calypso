operations
chooseClassForNewMethodIfNone: aBlock
	| targetClasses |
	targetClasses := browser chooseClassesForNewMethod: self editingMethod.
	 
	targetClasses size = 1 ifTrue: [ ^ targetClasses first].

	^[self browser searchDialog 
			requestSingleObject: 'Where install new method?'
			from: (ClyAllClasses as: ClyMethodVisibilityProvider defaultHierarchy asQueryResult) 
			inScope: (ClyClassScope ofAll: targetClasses)]
		on: CmdCommandAborted do: [:err | aBlock value ]