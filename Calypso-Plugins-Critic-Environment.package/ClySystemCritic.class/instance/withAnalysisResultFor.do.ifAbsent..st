private
withAnalysisResultFor: anObject do: resultBlock ifAbsent: absentBlock

	| result |
	guard critical: [ 
		result := requestedCritiques analysisResultFor: anObject ifAbsent: [ 
			analyzedObjects analysisResultFor: anObject ifAbsent: [^absentBlock value]]
	].

	^resultBlock value: result