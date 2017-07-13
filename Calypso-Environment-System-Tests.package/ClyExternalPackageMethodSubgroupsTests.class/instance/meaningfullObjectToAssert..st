helpers
meaningfullObjectToAssert: anEnvironmentItem
	self assert: anEnvironmentItem actualObject class equals: ClyExternalPackageMethodGroup.
	^anEnvironmentItem actualObject package