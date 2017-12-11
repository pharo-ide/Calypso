accessing
accumulateTestCase: aClass

	allCount := allCount + aClass allTestSelectors size.
	successCount := successCount + (aClass history at: #passed) size.
	failureCount := failureCount + (aClass history at: #failures) size.
	errorCount := errorCount + (aClass history at: #errors) size