tests
testCreationUnifiedInstanceWhenThereIsExtraScopeParameter

	| unifiedInstance |
	scope := self multipleScopeSample.
	scope extraParameter: #testParameter.
	
	unifiedInstance := scope asUnifiedInstance.
	
	self assert: unifiedInstance extraParameter equals: #testParameter