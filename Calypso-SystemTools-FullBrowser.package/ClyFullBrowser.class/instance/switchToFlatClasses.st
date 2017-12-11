navigation
switchToFlatClasses
	
	| classQueries |
	classQueries := OrderedCollection new.
	packageView selection groupItemsByTypeAndDo: [ :typeClass :items | 
		classQueries addAll: (typeClass prepareClassQueriesFrom: items in: navigationEnvironment)].
	
	classView showQueries: classQueries as: ClyExtensionLastSortedClasses hierarchical