accessing
classAnalysisResults
	^classAnalysisResults ifNil: [ 
		classAnalysisResults := Array streamContents: [ :s |
			classScope classesDo: [ :each | s nextPut: (self critic analyzeMethodsOf: each) ] ]]