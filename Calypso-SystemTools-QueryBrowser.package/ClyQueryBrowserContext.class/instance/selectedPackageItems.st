selection-packages
selectedPackageItems
	
	| unique packageItem |
	unique := OrderedCollection new.
	selectedItems do: [ :each | 
		packageItem := each systemDefinition definingPackageItem.
		unique 
			detect: [:existing | existing actualObject == packageItem actualObject] 
			ifNone: [unique add: packageItem]].
	^unique