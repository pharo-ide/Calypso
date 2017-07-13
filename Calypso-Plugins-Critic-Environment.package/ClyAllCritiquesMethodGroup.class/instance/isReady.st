testing
isReady

	^self classAnalysisResults allSatisfy: [ :each | each isComplete]