instance creation
fromAll: scopeClasses of: basisObjects

	| subqueries |
	subqueries := scopeClasses collect: [:eachScope | self from: eachScope of: basisObjects].
	^ClyCompositeQuery with: subqueries