testing
doesObjectHaveCritiques: anObject
	
	^self 
		withAnalysisResultFor: anObject 
		do: [ :result | result includesCritiques ] 
		ifAbsent: [ false ]