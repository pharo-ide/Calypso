private
withAnalysisResultFor: anObject do: resultBlock

	^self withAnalysisResultFor: anObject do: resultBlock ifAbsent: [nil]