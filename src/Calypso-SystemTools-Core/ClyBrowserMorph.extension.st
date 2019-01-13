Extension { #name : #ClyBrowserMorph }

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> allowSilentlyRemoveMethods: methods whichHaveSenders: senders [

	| singleSender sendersCount |
	sendersCount := senders size.
	sendersCount = 0 ifTrue: [ ^true].
	methods size = 1 & (sendersCount = 1) ifFalse: [^false].
	 
	singleSender := senders itemAt: 1.
	^singleSender == methods first
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> confirmEmptySystemQuery: aQuery [
	
	| showResult result |
	
	result := aQuery execute.
	result isEmpty ifTrue: [ ^true ].
	
	showResult := UIManager default confirm: 'There are '
		, result size asString, ' ', aQuery description, '. Show them?'.
	showResult ifTrue: [self spawnQueryBrowserOn: aQuery].
	^false
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> confirmUnusedClasses: classes [
	
	| refQuery |
	refQuery := ClyClassReferencesQuery toAny: classes from: self systemScope.
	
	^self confirmEmptySystemQuery: refQuery
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> confirmUnusedVariables: variables [
	
	| refQuery |
	refQuery := ClyVariableReferencesQuery ofAny: variables from: self systemScope.
	
	^self confirmEmptySystemQuery: refQuery
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> confirmUnusedVariablesInDefiningClass: variables [
	
	| refQuery classScope |
	classScope := ClyBothMetaLevelClassScope ofAll: (variables collect: [:each | each definingClass]) in: navigationEnvironment. 
	refQuery := ClyVariableReferencesQuery ofAny: variables from: classScope.
	
	^self confirmEmptySystemQuery: refQuery
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> decorateMethodEditor: aMethodEditor [
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> isMethodSelected: aMethod [

	^self methodSelection includesActualObject: aMethod
]

{ #category : #'*Calypso-SystemTools-Core' }
ClyBrowserMorph >> requestRemoveMethodStrategyFor: methods [
	| selectors result strategies caption  senders |
	selectors := methods collect: [ :each | each selector ] as: IdentitySet.	
	selectors := selectors asArray.
	senders := (ClyMessageSendersQuery ofAny: selectors from: self systemScope) execute.
	(self allowSilentlyRemoveMethods: methods whichHaveSenders: senders)
		ifTrue: [ ^SycSilentlyRemoveMethodStrategy new ].

	strategies := SycRemoveMethodStrategy createAllForBrowser: self.
	caption := selectors size > 1 
		ifTrue: [ 'There are ', senders size asString, ' senders']
		ifFalse: ['The message ', selectors anyOne printString ,' has ' , senders size asString , ' sender'].	
	result := UIManager default 
		chooseFrom: (strategies collect: #userRequestString) values: strategies title: caption.
	^result ifNil: [ SycNotRemoveMethodStrategy new ]
]
