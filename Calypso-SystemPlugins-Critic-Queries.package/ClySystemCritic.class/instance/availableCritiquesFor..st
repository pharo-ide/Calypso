accessing
availableCritiquesFor: anObject

	^self 
		withAnalysisResultFor: anObject 
		do: [ :result | result critiques ] 
		ifAbsent: [ #() ]
