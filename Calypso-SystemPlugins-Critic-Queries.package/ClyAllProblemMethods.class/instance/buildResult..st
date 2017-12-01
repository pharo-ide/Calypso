execution
buildResult: aQueryResult

	| critiques methods |
	critiques := scope query: critiqueQuery.
	
	methods := critiques items collect: [ :each | each sourceAnchor entity ] as: IdentitySet.
	
	aQueryResult fillWith: methods