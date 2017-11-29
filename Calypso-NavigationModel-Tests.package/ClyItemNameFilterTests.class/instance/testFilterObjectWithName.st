tests
testFilterObjectWithName

	filter := ClyItemNameFilter substringPattern: 'ject'. "Object"
	
	self assert: (filter matches: Object).
	self deny: (filter matches: Array)