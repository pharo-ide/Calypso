building groups
methodGroupsIn: aClassScope do: aBlock
	| testCases |
	
	testCases := OrderedCollection new.
	aClassScope classesDo: [ :each | 
		(each isTestCase and: [each isAbstract not
			and: [ each hasFailedTest or: [ each hasErrorTest ] ]])
				ifTrue: [ testCases add: each ]].
	
	testCases ifEmpty: [^self].

	aBlock value: (ClyFailedTestGroup classes: testCases)