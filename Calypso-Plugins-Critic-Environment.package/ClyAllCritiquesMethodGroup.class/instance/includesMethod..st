testing
includesMethod: aMethod
	^(classes includes: aMethod origin)
		and: [critic doesObjectHaveCritiques: aMethod]