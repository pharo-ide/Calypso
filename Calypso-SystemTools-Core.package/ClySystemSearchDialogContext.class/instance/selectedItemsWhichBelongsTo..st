private
selectedItemsWhichBelongsTo: anEnvironmentScopeClass
	
	^selectedItems select: [ :each | 
		each belongsToScope: anEnvironmentScopeClass ]