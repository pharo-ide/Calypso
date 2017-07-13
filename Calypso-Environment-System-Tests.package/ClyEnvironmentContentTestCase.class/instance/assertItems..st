helpers
assertItems: itemValueWithDepthArray

	self 
		assertItems: itemValueWithDepthArray 
		withValue: [:item | self meaningfullObjectToAssert: item]