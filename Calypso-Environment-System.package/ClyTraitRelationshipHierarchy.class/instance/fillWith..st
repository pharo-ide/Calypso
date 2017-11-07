building
fillWith: classes

	| filteredChildren |
	filteredChildren := classes asIdentitySet.
	buildingQuery scope basisObjects do: [ :eachRoot |
		self fillWith: filteredChildren startingAt: eachRoot depth: 0]