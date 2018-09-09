accessing
defaultMenuItemName
	self hasTestResult ifFalse: [ ^'Run failed' ].
	
	^'Run failed (', self testResult brokenCount asString, ')'