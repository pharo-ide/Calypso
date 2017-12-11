building
buildFrom: classes sortedBy: aSortFunction
	^(self sortedBy: aSortFunction)
		buildFrom: classes