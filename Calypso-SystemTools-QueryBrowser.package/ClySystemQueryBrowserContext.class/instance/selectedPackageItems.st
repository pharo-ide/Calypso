selection-packages
selectedPackageItems
	
	| definition unique packageItem |
	unique := OrderedCollection new.
	selectedItems do: [ :each | 
		definition := each getProperty: ClyDefinitionProperty.
		packageItem := definition definitionPackageItem.
		unique 
			detect: [:existing | existing actualObject == packageItem actualObject] 
			ifNone: [unique add: packageItem]].
	^unique