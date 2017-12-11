accessing
defaultMenuItemName
	self hasTestResult ifFalse: [ ^super defaultMenuItemName ].
	
	^'Run all (', self testResult allCount asString, ')'