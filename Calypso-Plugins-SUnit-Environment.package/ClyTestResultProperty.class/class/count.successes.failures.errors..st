instance creation
count: fullCount successes: successes failures: failures errors: errors 
	^self new
		allCount: fullCount;
		successesCount: successes;
		failuresCount: failures;
		errorsCount: errors 