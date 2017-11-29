testing
buildResult: aQueryResult
	| failedTests |
	failedTests := OrderedCollection new.
	scope classesDo: [ :each | each isTestCase ifTrue: [
		(each history at: #failures) do: [ :testSelector |
			(each lookupSelector: testSelector) ifNotNil: [ :method | 
				failedTests add: method ]].
		(each history at: #errors) do: [ :testSelector |
			(each lookupSelector: testSelector) ifNotNil: [ :method | 
				failedTests add: method ]].
	]].
	aQueryResult fillWith: failedTests