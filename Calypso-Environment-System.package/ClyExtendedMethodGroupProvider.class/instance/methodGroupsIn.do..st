building groups
methodGroupsIn: aClassScope do: aBlock

	aClassScope methodsDo: [ :method | 
		method isExtension ifTrue: [] ]