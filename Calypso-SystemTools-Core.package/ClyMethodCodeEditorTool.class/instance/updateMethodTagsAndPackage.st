updating
updateMethodTagsAndPackage
	
	methodTags := editingMethod tags reject: [ :each | each beginsWith: '*' ].	
	extendingPackage := editingMethod isExtension ifTrue: [ editingMethod package ] ifFalse: [ nil ].