accessing
analysisResultFor: anObject ifAbsent: absentBlock
	^self analysisResultFor: anObject ifPresent: [:result | result] ifAbsent: absentBlock