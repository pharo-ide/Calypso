commands support
requestRemoveMethodStrategyFor: methods
	| selectors result strategies caption senders |
	selectors := methods collect: [ :each | each selector ] as: IdentitySet.	
	selectors := selectors asArray.
	senders := navigationEnvironment 
		query: (ClyMessageSenders of: selectors) inScope: self systemScope.
	(self allowSilentlyRemoveMethods: methods whichHaveSenders: senders)
		ifTrue: [ ^SycSilentlyRemoveMethodStrategy new ].

	strategies := {	SycSilentlyRemoveMethodStrategy new. 
		ClyRemoveAndShowSendersMethodStrategy by: self.
		ClyNotRemoveAndShowSendersMethodStrategy by: self. 
		SycNotRemoveMethodStrategy new}.	
	caption := selectors size > 1 
		ifTrue: [ 'There are ', senders itemCount asString, ' senders']
		ifFalse: ['The message ', selectors anyOne printString ,' has ' , senders itemCount asString , ' sender'].	
	result := UIManager default 
		chooseFrom: (strategies collect: #userRequestString) values: strategies title: caption.
	^result ifNil: [ SycNotRemoveMethodStrategy new ]