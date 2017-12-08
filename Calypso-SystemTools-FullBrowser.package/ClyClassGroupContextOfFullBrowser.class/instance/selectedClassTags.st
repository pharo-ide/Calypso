selection-class groups
selectedClassTags
	
	^selectedItems 
		select: [ :each | each type isBasedOnClassTag ] 
		thenCollect: [ :each | each name ]