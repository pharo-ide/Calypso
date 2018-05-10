as yet unclassified
prepareProjectItemsQueryFrom: aProjectChildItem in: aNavigationEnvironment 

	^ ClyProjectContentQuery 
			sortedFrom: (ClyProjectScope of: aProjectChildItem in: aNavigationEnvironment)