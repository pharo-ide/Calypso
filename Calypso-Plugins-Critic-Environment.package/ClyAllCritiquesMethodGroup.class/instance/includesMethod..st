testing
includesMethod: aMethod
	^(classScope includes: aMethod origin)
		and: [critic doesObjectHaveCritiques: aMethod]