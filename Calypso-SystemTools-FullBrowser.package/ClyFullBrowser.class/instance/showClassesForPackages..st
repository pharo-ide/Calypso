navigation
showClassesForPackages: selectedPackages
	| classQueries |
	classQueries := OrderedCollection new.
	selectedPackages groupItemsByTypeAndDo: [ :typeClass :items | 
		classQueries addAll: (typeClass prepareClassQueriesFrom: items in: navigationEnvironment)].
	
	classView 
		showQueries: classQueries 
		as: ClyExtensionLastSortedClasses hierarchical