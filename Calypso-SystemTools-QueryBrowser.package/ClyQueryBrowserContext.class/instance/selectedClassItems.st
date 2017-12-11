selection-classes
selectedClassItems
	
	| definition unique classItem |
	unique := OrderedCollection new.
	selectedItems do: [ :each | 
		definition := each getProperty: ClyItemDefinitionProperty.
		classItem := definition definingClassItem.
		unique 
			detect: [:existing | existing actualObject == classItem actualObject] 
			ifNone: [unique add: classItem]].
	^unique