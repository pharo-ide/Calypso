converting
sortedBy: aSortFunction
	^self copy 
		hierarchy: (hierarchy sortedBy: aSortFunction) 