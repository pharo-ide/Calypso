testing
selectsMethod: aMethod
	
	selectors with: self specialSelectorIndexes do: [ :selector :specialIndex |
		(aMethod hasSelector: selector specialSelectorIndex: specialIndex) 
			ifTrue: [	^true] ].
			
	^false