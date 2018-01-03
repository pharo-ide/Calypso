testing
affectsMethodsDefinedInClass: aClass

	^ (aClass includesLocalSelector: self overriddenMethod selector)
			and: [ aClass inheritsFrom: self overriddenMethod origin ]