item decoration
doesMethodHasExecutionCounter: aMethod

	^ExecutionCounter allCounters anySatisfy: [ :counter |
		counter node method == aMethod]