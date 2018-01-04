accessing
accumulateTest: testSelector of: aTestClass

	allCount := allCount + 1.
	successCount := successCount + (aTestClass methodPassed: testSelector) asBit.
	failureCount := failureCount + (aTestClass methodFailed: testSelector) asBit.
	errorCount := errorCount + (aTestClass methodRaisedError: testSelector) asBit