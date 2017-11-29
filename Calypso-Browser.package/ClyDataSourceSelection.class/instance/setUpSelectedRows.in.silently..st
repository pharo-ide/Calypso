private
setUpSelectedRows: indexes in: aTableMorph silently: silentSelection

	silentSelection
		ifTrue: [ aTableMorph basicSelectRowIndexes: indexes]
		ifFalse: [ 
			"we should prevent ignoring new selection if indexes are still same"
			aTableMorph basicSelectRowIndexes: #(-1000). 
			aTableMorph selectRowIndexes: indexes ]