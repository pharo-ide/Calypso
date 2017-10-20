building groups
methodGroupsIn: aClassScope do: aBlock

	| group |
	group := self createMethodGroupInScope: aClassScope.
	group isEmpty ifTrue: [ ^self ].
		
	aBlock value: group