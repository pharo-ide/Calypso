private
collectGoToCandidates
	
	| result |
	result := OrderedCollection new.
	
	browser allContextsDo: [ :each | 
		result add: each asGoToSpotterCandidate ].
	
	^result 