testing
affectsMethod: aMethod
	^(aMethod selector = self overriddenMethod selector)
		and: [ aMethod origin inheritsFrom: self overriddenMethod origin]