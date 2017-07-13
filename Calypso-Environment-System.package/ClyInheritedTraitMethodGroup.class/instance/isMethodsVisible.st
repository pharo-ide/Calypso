testing
isMethodsVisible

	^classes anySatisfy: [ :each |
		classes includesAny: each traitComposition allTraits ]