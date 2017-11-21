instance creation
fromAll: scopeClasses of: basisObjects in: aNavigationEnvironment

	| subqueries |
	subqueries := scopeClasses collect: [:eachScope | 
		self from: eachScope of: basisObjects in: aNavigationEnvironment].
	^ClyCompositeQuery with: subqueries