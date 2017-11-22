navigation
switchToMethodGroups
	| newDS classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifTrue: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery := ClyAllMethodGroups sortedFrom: classScope.
		newDS := ClyCollapsedDataSource on: methodGroupQuery.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]