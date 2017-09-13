testing
isAutoActivatedOn: aNavigationEnvironment
	^self isAutoActivated 
		and: [ self isRelatedTo: aNavigationEnvironment system ]