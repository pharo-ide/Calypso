selection-packages
selectedPackageItems
	
	| definition unique packageItem |
	unique := OrderedCollection new.
	selectedItems do: [ :each | 
		definition := each getProperty: ClyItemDefinitionProperty.
		packageItem := definition definingPackageItem.
		unique 
			detect: [:existing | existing actualObject == packageItem actualObject] 
			ifNone: [unique add: packageItem]].
	^unique