accessing
defaultMenuItemName
	self hasTestResult ifFalse: [ ^super defaultMenuItemName ].
	
	^'Run failed (', self testResult brokenCount asString, ')'