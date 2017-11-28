navigation
browseQuery: aQuery
	
	| actualQuery |
	actualQuery := activeScope adoptQuery: aQuery.
	
	super browseQuery: actualQuery