accessing
methodTags 
	^methodTags ifEmpty: [ 
		editingMethod tags reject: [ :each | each beginsWith: '*'  ] ]