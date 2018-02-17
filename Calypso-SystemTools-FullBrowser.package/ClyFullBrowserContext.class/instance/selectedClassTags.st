selection-class groups
selectedClassTags
	
	^self selectedClassGroupItems
		select: [ :each | each type isBasedOnClassTag ] 
		thenCollect: [ :each | each name ]