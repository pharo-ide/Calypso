printing
printBasis

	| classes classPart groupPart |
	classes := basisObjects flatCollect: [:each | each classes] as: IdentitySet.
	classPart := ', ' join: (classes collect: #name).
	groupPart := super printBasis.
	^classPart, '-', groupPart