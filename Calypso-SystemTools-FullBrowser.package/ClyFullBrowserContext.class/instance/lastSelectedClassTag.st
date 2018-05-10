selection-packages
lastSelectedClassTag
	| tagItem |
	tagItem := tool classGroupSelection items 
		detect: [ :each | each type isBasedOnClassTag ].
	^tagItem name