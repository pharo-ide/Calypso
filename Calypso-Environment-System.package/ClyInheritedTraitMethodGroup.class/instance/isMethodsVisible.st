testing
isMethodsVisible

	^classScope anySatisfy: [ :each |
		classScope includesAny: each traitComposition allTraits ]