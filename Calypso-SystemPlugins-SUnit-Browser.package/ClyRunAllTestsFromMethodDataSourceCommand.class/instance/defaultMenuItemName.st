accessing
defaultMenuItemName
	self hasTestResult ifFalse: [ ^'Run all' ].
	
	^'Run all (', self testResult allCount asString, ')'