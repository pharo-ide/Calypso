navigation
showClassesForPackages: selectedPackages
	| classQueries |
	classQueries := OrderedCollection new.
	selectedPackages groupItemsByTypeAndDo: [ :typeClass :items | 
		classQueries addAll: (typeClass prepareClassQueriesFrom: items)].
	
	classView 
		showQueries: classQueries 
		as: ClyExtensionLastSortedClasses hierarchical