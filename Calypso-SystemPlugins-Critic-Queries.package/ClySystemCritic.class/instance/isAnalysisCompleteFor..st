testing
isAnalysisCompleteFor: anObject

	^self 
		withAnalysisResultFor: anObject 
		do: [ :result | result isComplete ] 
		ifAbsent: [ false ]