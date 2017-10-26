building
fillWith: classes

	| filteredChildren |
	filteredChildren := classes asIdentitySet.
	environmentScope basisObjects do: [ :eachRoot |
		self fillWith: filteredChildren startingAt: eachRoot depth: 0]