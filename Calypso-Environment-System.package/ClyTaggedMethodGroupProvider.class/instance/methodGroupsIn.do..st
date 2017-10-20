building groups
methodGroupsIn: aClassScope do: aBlock
	
	| methodGroups |
	methodGroups := Dictionary new.

	aClassScope methodsDo: [ :method |
		self buildMethodGroupsFor: method on: methodGroups].
	self addMissingGroupsOn: methodGroups inScope: aClassScope.
		
	methodGroups do: aBlock