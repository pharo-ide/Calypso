navigation
switchToVariables
	| newDS classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifFalse: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery := ClyCompositeQuery with: {  
			ClyAllVariables from: classScope.
			ClyAllVariables from: (classScope asScope: ClySuperclassScope).
		} as: ClyGroupedVariables new.
		newDS := ClyCollapsedDataSource on: methodGroupQuery.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]