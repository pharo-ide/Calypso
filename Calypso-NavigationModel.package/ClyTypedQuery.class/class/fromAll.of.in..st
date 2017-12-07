instance creation
fromAll: scopeClasses of: aBasisObject in: aNavigationEnvironment

	| subqueries |
	subqueries := scopeClasses collect: [:eachScope | 
		self from: eachScope of: aBasisObject in: aNavigationEnvironment].
	^ClyQuery unionFrom: subqueries