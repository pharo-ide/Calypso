testing
isAutoActivatedOn: aNavigationEnvironment
	^self isAbstract not & self isAutoActivated 
		and: [ self isRelatedTo: aNavigationEnvironment system ]