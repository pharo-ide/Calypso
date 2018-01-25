execution
buildResult: aQueryResult
	| projects |
	projects := OrderedCollection new.
	
	scope projectsDo: [ :each | 
		projects add: each
	].

	aQueryResult fillWith: projects