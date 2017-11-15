helpers
meaningfullObjectToAssert: anEnvironmentItem
	self assert: anEnvironmentItem actualObject class equals: ClyVisibilityMethodGroup.
	^anEnvironmentItem actualObject superclass