building groups
methodGroupsIn: aClassScope do: aBlock
	
	aBlock value: (ClyInheritedMethodGroup fromClasses: aClassScope)