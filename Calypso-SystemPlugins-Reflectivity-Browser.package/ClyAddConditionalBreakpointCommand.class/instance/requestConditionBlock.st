execution
requestConditionBlock
	| script |
	script := 'true'.
	script := UIManager default 
		request: 'This expression will be evaluated in the context of the position of this breakpoint.
		You can use variables, globals, `thisContext`, `self` and `super`.
		`:=` and Pool variables are not supported`'
		initialAnswer: script
		title: 'Break on what condition?'.
	script isEmptyOrNil ifTrue: [ CmdCommandAborted signal ].
	^ self conditionStringToConditionBlock: script.