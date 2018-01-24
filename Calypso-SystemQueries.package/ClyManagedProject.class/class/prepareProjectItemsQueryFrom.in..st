queries
prepareProjectItemsQueryFrom: aProject in: aNavigationEnvironment

	^ ClyProjectContentQuery 
			sortedFrom: (ClyProjectScope of: aProject in: aNavigationEnvironment)