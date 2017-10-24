testing
isSameKindAs: anotherResult

	^(super isSameKindAs: anotherResult)
		and: [sortFunction = anotherResult sortFunction]