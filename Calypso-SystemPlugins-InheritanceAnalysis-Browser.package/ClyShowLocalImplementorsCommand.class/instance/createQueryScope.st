execution
createQueryScope

	| classes |
	classes := methods collect: [ :each | each origin].
	
	^self createInheritanceScopeFrom: classes