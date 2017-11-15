building groups
methodGroupsIn: aClassScope do: aBlock

	| methodQuery |
	methodQuery := self createMethodQueryInScope: aClassScope.
	(aClassScope environment isQueryEmpty: methodQuery) ifTrue: [ ^self ].
		
	aBlock value: (self createMethodGroupInScope: aClassScope for: methodQuery)