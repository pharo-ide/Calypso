accessing
classAnalysisResults
	^classAnalysisResults ifNil: [ 
		classAnalysisResults := Array streamContents: [ :s |
			methodQuery scope classesDo: [ :each | s nextPut: (self critic analyzeMethodsOf: each) ] ]]