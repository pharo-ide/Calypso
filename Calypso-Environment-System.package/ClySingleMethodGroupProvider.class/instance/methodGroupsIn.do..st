building groups
methodGroupsIn: aClassScope do: aBlock

	| methodQuery |
	methodQuery := self createMethodQueryFrom: aClassScope.
	methodQuery hasEmptyResult ifTrue: [ ^self ].
		
	aBlock value: (self createMethodGroupFor: methodQuery from: aClassScope)