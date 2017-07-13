accessing
type
	| property |
	property := self 
		getProperty: ClyEnvironmentItemTypeProperty ifAbsent: [ self error: 'Type is not defined' ].
	^property itemType