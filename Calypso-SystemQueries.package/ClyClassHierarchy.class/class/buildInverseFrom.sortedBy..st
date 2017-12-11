building
buildInverseFrom: classes sortedBy: aSortFunction

	^(self sortedBy: aSortFunction)
		inverse: true;
		buildFrom: classes