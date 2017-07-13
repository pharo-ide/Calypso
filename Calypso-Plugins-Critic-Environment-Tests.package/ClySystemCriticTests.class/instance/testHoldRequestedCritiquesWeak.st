tests
testHoldRequestedCritiquesWeak
	| class result |
	self timeLimit: 10 seconds.
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	class passQuicklyCritiquesAnalysis.
		
	result := critic analyze: class.
	self waitAnalysisComplete.
	Smalltalk garbageCollect.
	self assert: (critic requestedCritiques analysisResultFor: class ifAbsent: [ nil ]) == result.
	result := nil.
	Smalltalk garbageCollect.
	self deny: (critic requestedCritiques isRegistered: class).
	self assert: (critic requestedCritiques analysisResultFor: class ifAbsent: [ nil ]) isNil.
	self assert: (critic analyzedObjects analysisResultFor: class ifAbsent: [ nil ]) critiques equals: #(critique1 critique2).