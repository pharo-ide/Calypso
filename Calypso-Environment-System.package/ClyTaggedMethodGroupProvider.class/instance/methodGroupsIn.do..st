building groups
methodGroupsIn: aClassScope do: aBlock
	
	| methodGroups |
	methodGroups := Dictionary new.
	aClassScope methodsDo: [ :method |
		self buildMethodGroupsFor: method on: methodGroups].
	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup classes: existing classes)].
		
	methodGroups do: aBlock