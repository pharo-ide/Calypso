building
fillWith: classes

	| filteredChildren sortedRoots |
	filteredChildren := classes asIdentitySet.
	sortedRoots := buildingQuery scope basisObjects asSortedCollection: #name ascending.
	sortedRoots do: [ :eachRoot |
		self fillWith: filteredChildren startingAt: eachRoot depth: 0]