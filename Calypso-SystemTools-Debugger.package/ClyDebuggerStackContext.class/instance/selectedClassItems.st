selection-classes
selectedClassItems

	^self selectedMethodItems collect: [:each | 
		each systemDefinition definingClassItem]