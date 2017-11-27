navigation
switchToVariables
	| classScope |
	(methodGroupQuery isKindOf: ClyAllMethodGroups) ifFalse: [^self].
	
	self changeStateBy: [
		classScope := methodGroupQuery scope asScope: metaLevelScope.
		methodGroupQuery :=ClyAllVariables 
			from: classScope, classScope asInheritedScope 
			as: ClyGroupedInstanceVariables new.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]