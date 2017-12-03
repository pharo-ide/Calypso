building
fillWith: classes
	| actualClassScope classMap |
	actualClassScope := self scope asScope: ClyClassScope.

	classMap := ClySubclassHierarchy buildInverseFrom: classes.
	classMap rootsDo: [ :eachRoot | | initialDepth |
		initialDepth := -1.
		(self scope isBasedOn: eachRoot) ifFalse: [
			self buildGroupFor: eachRoot depth: initialDepth toShowMethodsFrom: actualClassScope.
			initialDepth := initialDepth + 1].
		classMap allChildrenOf: eachRoot depth: initialDepth do: [ :each :depth | 
			self buildGroupFor: each depth: depth toShowMethodsFrom: actualClassScope]]