accessing
bindTo: aNavigationEnvironment
	environment ifNil: [ environment := aNavigationEnvironment ].
	
	environment == aNavigationEnvironment
		ifFalse: [ self error: 'Scope should never be rebound to new environment' ]