tests
testComparisonWithAnotherFilter

	| anotherFilter |
	filter := ClyItemNameFilter substringPattern: 'filter'. 
	
	anotherFilter := ClyItemNameFilter substringPattern: 'filter'. 
	self assert: filter equals: anotherFilter.
	self assert: filter hash equals: anotherFilter hash.
	
	anotherFilter := ClyItemNameFilter substringPattern: 'filter2'. 
	self deny: filter = anotherFilter.
	