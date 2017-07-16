tests
testHoldRequestedCritiquesWeak
	| class |
	"by some reason analysisResult should be inst var. When it is temp then garbage collection not clean weak value of this variable when we nil it in the test. But it is cleaned when debugger is opened"
	self timeLimit: 10 seconds.
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	class passQuicklyCritiquesAnalysis.
		
	analysisResult := critic analyze: class.
	self waitAnalysisComplete.
	Smalltalk garbageCollect.
	self assert: (critic requestedCritiques analysisResultFor: class ifAbsent: [ nil ]) == analysisResult.
	analysisResult := nil.
	Smalltalk garbageCollect.
	self deny: (critic requestedCritiques isRegistered: class).
	self assert: (critic requestedCritiques analysisResultFor: class ifAbsent: [ nil ]) isNil.
	self assert: (critic analyzedObjects analysisResultFor: class ifAbsent: [ nil ]) critiques equals: #(critique1 critique2).