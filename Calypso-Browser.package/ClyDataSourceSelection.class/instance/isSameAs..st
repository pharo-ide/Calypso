testing
isSameAs: anotherSelection

	self size = anotherSelection size ifFalse: [ ^false ].
	
	items with: anotherSelection items do: [ :myItem :anotherItem | 
		myItem actualObject == anotherItem actualObject ifFalse: [ ^false ]].
	
	^true