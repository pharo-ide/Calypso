accessing
classAnalysisResults
	^classAnalysisResults ifNil: [ 
		classAnalysisResults := classes collect: [ :each | self critic analyzeMethodsOf: each ] ]