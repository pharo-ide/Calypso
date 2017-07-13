building groups
buildGroupItemsOn: items
	| testCases item |
	
	testCases := classes select: [ :each | each isTestCase and: [each isAbstract not]].
	(testCases anySatisfy: [:each | each hasFailedTest or: [ each hasErrorTest ]])
		ifFalse: [^self].

	item := (ClyFailedTestGroup classes: testCases) asEnvironmentItem.
	item addProperty: (self buildTestResultPropertyFrom: testCases).
	items add: item