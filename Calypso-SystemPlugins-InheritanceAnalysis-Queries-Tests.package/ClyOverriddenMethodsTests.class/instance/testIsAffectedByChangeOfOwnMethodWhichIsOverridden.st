tests
testIsAffectedByChangeOfOwnMethodWhichIsOverridden
	
	self assert: (query isAffectedByChangedMethod: ClyAbstractClassExample>>#overriddenMethod)