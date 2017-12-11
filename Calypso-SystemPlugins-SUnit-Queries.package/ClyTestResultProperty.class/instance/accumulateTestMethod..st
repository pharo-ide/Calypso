accessing
accumulateTestMethod: testMethod

	allCount := allCount + 1.
	successCount := successCount + testMethod isPassedTest asBit.
	failureCount := failureCount + testMethod isFailedTest asBit.
	errorCount := errorCount + testMethod isErrorTest asBit