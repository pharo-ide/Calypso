tests
testSortedDecorators
	"Assertion failure could be caused by wrong image state. It can be fixed by 
		ClyTableDecorator resetDecorators"
	| expected actual |
	expected := SortedCollection sortBlock: [ :a :b | a priority <= b priority].
	ClyTableDecorator allSubclassesDo: [ :each | expected add: each ].
	
	actual := ClyTableDecorator sortedDecorators.
	
	self assert: actual asArray equals: expected asArray