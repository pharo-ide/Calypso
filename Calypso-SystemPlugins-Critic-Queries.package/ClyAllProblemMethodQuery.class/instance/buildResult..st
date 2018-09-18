execution
buildResult: aQueryResult

	| critiques methods |
	critiques := critiqueQuery execute.
	
	methods := critiques items collect: [ :each | each sourceAnchor entity ] as: IdentitySet.
	
	aQueryResult fillWith: methods