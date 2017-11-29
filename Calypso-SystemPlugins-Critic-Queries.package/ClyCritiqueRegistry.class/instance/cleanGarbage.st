controlling
cleanGarbage
	| garbage |
	
	contents keysAndValuesDo: [ :criticSubjectType :criticSubjects | 
		garbage := OrderedCollection new.
		criticSubjects keysAndValuesDo: [ :criticSubject :analysisResult | 
			analysisResult ifNil: [garbage add: criticSubject]].
		garbage do: [ :each |	criticSubjects removeKey: each]
	]