execution
requestConditionBlock
	| script compiledBlock |
	script := ''.
	[script := UIManager default 
		request: 'Use any variables or globals. 
Script will be executed to be verified'
		initialAnswer: script
		title: 'Break on what condition?'.
	script isEmptyOrNil ifTrue: [ CmdCommandAborted signal ].
	compiledBlock := method compiler evaluate: '[', script, ']'.
	compiledBlock value isKindOf: Boolean] whileFalse: [ 
		self inform: 'Script should return boolean!' ].
	^compiledBlock