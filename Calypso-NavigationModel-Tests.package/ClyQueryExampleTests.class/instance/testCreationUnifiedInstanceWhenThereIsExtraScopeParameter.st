tests
testCreationUnifiedInstanceWhenThereIsExtraScopeParameter

	| unifiedInstance |
	query extraParameter: #testParameter.
	
	unifiedInstance := query asUnifiedInstance.
	
	self assert: unifiedInstance extraParameter equals: #testParameter