building groups
methodGroupsIn: aClassScope do: aBlock

	| methodQuery |
	methodQuery := self createMethodQueryFrom: aClassScope.
	(aClassScope environment isQueryEmpty: methodQuery) ifTrue: [ ^self ].
		
	aBlock value: (self createMethodGroupFor: methodQuery from: aClassScope)