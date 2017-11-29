initialization
setUpSelectedRows: indexes in: aTableMorph silently: silentSelection
	silentSelection
		ifTrue: [ aTableMorph basicHighlightRowIndexes: indexes]
		ifFalse: [ 
			"we should prevent ignoring new selection if indexes are still same"
			aTableMorph basicHighlightRowIndexes: #(-1000). 
			aTableMorph highlightRowIndexes: indexes ]