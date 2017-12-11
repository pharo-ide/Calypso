building groups
methodGroupsIn: aClassScope do: aBlock

	| methodQuery methodGroup |
	methodQuery := self createMethodQueryFrom: aClassScope.
	methodQuery hasEmptyResult ifTrue: [ ^self ].
		
	methodGroup := self createMethodGroupFor: methodQuery from: aClassScope.
	methodQuery isAsync ifTrue: [ methodGroup := methodGroup asAsyncQueryGroup ].
	aBlock value: methodGroup