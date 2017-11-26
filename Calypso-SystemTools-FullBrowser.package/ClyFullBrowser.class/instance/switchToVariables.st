navigation
switchToVariables
	| classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifFalse: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery := ClyQuery unionFrom: {  
			ClyAllVariables from: classScope.
			ClyAllVariables from: (classScope asScope: ClySuperclassScope).
		} as: ClyGroupedInstanceVariables new.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]