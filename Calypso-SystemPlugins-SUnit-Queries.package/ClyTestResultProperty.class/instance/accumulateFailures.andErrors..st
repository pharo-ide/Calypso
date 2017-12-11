accessing
accumulateFailures: failures andErrors: errors

	allCount := allCount + failures + errors.
	failureCount := failureCount + failures.
	errorCount := errorCount + errors