accessing
inheritedTraits

	^classes flatCollect: [ :each | each traitComposition allTraits ] as: IdentitySet