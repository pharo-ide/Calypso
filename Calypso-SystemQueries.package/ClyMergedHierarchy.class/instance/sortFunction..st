accessing
sortFunction: aSortFunction
	super sortFunction: aSortFunction.
	mergedParts do: [:each | each sortFunction: aSortFunction]