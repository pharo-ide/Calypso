private
showItemsOf: aQuery inScope: aScope

	aQuery bindTo: aScope in: browser navigationEnvironment.
	
	itemsView showQuery: aQuery.
	itemsView adoptForDialog