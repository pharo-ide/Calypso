navigation
switchToMethodGroups
	| classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifTrue: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery := ClyAllMethodGroups sortedFrom: classScope.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]