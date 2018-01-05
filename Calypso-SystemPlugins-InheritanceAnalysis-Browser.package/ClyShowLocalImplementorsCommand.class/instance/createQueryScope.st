execution
createQueryScope

	| classes scope |
	classes := methods collect: [ :each | each origin].
	
	scope := self createInheritanceScopeFrom: classes.
	scope := scope withMetaLevel: ClyClassScope.
	^scope