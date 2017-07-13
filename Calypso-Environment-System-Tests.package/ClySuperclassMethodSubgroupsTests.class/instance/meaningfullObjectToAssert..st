helpers
meaningfullObjectToAssert: anEnvironmentItem
	self assert: anEnvironmentItem actualObject class equals: ClySuperclassMethodGroup.
	^anEnvironmentItem actualObject superclass