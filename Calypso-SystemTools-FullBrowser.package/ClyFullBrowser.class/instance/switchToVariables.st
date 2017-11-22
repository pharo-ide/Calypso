navigation
switchToVariables
	| classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifFalse: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery := ClyCompositeQuery with: {  
			ClyAllVariables from: classScope.
			ClyAllVariables from: (classScope asScope: ClySuperclassScope).
		} as: ClyGroupedVariables new.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]