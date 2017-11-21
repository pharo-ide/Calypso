accessing
environment
	scope ifNil: [ self error: 'Scope is not defined. So environment is undefined' ].
	^scope environment