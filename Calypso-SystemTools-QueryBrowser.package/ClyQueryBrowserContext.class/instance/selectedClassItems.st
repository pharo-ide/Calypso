selection-classes
selectedClassItems
	
	| unique classItem |
	unique := OrderedCollection new.
	selectedItems do: [ :each | 
		classItem := each systemDefinition definingClassItem.
		unique 
			detect: [:existing | existing actualObject == classItem actualObject] 
			ifNone: [unique add: classItem]].
	^unique