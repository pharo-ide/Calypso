accessing
classAnalysisResults
	^classAnalysisResults ifNil: [ 
		classAnalysisResults := classScope collect: [ :each | self critic analyzeMethodsOf: each ] ]