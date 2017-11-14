accessing
inheritedTraits

	^classScope flatCollect: [ :each | each traitComposition allTraits ] as: IdentitySet