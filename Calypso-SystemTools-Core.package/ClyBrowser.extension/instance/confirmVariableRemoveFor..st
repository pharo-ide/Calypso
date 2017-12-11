*Calypso-SystemTools-Core
confirmVariableRemoveFor: variables
	
	| refQuery refs showRefs |
	refQuery := ClyVariableReferences of: variables from: self systemScope.
	
	refs := refQuery execute.
	refs isEmpty ifTrue: [ ^true ].
	
	showRefs := UIManager default confirm: 'There are '
		, refs size asString, ' ', refQuery description, '. Show them?'.
	showRefs ifTrue: [self spawnQueryBrowserOn: refQuery].
	^false