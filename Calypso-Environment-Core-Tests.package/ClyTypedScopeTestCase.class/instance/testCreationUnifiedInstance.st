tests
testCreationUnifiedInstance

	| unifiedInstance |
	scope := self multipleScopeSample.
	unifiedInstance := scope asUnifiedInstance.
	
	self assert: unifiedInstance class equals: scope class.
	self assert: unifiedInstance environment equals: environment.
	self assert: unifiedInstance basisObjects isEmpty