updating
updateMethodTagsAndPackage
	super updateMethodTagsAndPackage.
	
	extendingPackage := editingMethod isExtension ifTrue: [ editingMethod package ] ifFalse: [ nil ].