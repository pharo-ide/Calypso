private
collectGoToCandidates
	
	| result |
	result := OrderedCollection new.
	
	browser allContextsDo: [ :each | 
		each asGoToSpotterCandidate ifNotNil: [:c |
			result add: c ] ].
	
	^result 