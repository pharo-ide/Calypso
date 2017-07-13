accessing
scope
	| property |
	property := self 
		getProperty: ClyEnvironmentItemScopeProperty ifAbsent: [ self error: 'Scope is not defined' ].
	^property itemScope