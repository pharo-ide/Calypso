*Calypso-SystemTools-Core
requestRemoveMethodStrategyFor: methods
	| selectors result strategies caption  senders |
	selectors := methods collect: [ :each | each selector ] as: IdentitySet.	
	selectors := selectors asArray.
	senders := (ClyMessageSenders ofAny: selectors from: self systemScope) execute.
	(self allowSilentlyRemoveMethods: methods whichHaveSenders: senders)
		ifTrue: [ ^SycSilentlyRemoveMethodStrategy new ].

	strategies := SycRemoveMethodStrategy createAllForBrowser: self.
	caption := selectors size > 1 
		ifTrue: [ 'There are ', senders size asString, ' senders']
		ifFalse: ['The message ', selectors anyOne printString ,' has ' , senders size asString , ' sender'].	
	result := UIManager default 
		chooseFrom: (strategies collect: #userRequestString) values: strategies title: caption.
	^result ifNil: [ SycNotRemoveMethodStrategy new ]