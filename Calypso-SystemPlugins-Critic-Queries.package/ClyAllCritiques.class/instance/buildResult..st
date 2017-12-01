execution
buildResult: aQueryResult
		
	| result |
	result := scope basisObjects flatCollect: [ :each | 
		each critiques ].

	aQueryResult fillWith: result