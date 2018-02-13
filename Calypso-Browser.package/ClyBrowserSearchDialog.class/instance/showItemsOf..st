private
showItemsOf: aQuery

	| actualQuery |
	actualQuery := aQuery isBoundToEnvironment
		ifTrue: [ aQuery ]
		ifFalse: [ aQuery withScope: browser systemScope ]..
	
	itemsView showQuery: actualQuery semiAsync.
	itemsView adoptForDialog