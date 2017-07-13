accessing
allTraitsOf: aClass do: userAndTraitBlock
	
	aClass traits do: [:eachTrait |
		userAndTraitBlock value: aClass value: eachTrait.
		self allTraitsOf: eachTrait do: userAndTraitBlock].