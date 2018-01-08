accessing
requiredResult: aQueryResult
	requiredResult := aQueryResult.
	self shouldBeProtectedByWriteBarrier ifTrue: [ 
		requiredResult beReadOnlyObject ]