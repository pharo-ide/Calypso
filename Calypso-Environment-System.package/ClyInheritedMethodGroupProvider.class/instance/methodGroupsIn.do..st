building groups
methodGroupsIn: aClassScope do: aBlock
	
	aBlock value: (ClyInheritedMethodGroup classes: aClassScope collectAllClasses)