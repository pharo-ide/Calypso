tests
testDefaultHierarchyShouldExist

	self assert: (ClyMethodVisibilityGroups defaultHierarchy isKindOf: ClyClassHierarchy)