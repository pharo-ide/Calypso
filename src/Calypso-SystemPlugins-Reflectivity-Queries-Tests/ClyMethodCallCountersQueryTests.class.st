Class {
	#name : #ClyMethodCallCountersQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#instVars : [
		'installedCounters'
	],
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Tests-ExecutionCounters'
}

{ #category : #running }
ClyMethodCallCountersQueryTests >> createQuery [
	^ClyMethodCallCountersQuery from: ClyClassScope of: self class in: environment
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> installCounterInto: selector [
	| counter |
	counter := ExecutionCounter installOn: (self class >> selector) ast sendNodes last.
	installedCounters add: counter.
	^counter
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> methodWithCounter [
	^1+2
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> methodWithoutCounter [
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> setUp [
	super setUp.
	
	installedCounters := OrderedCollection new
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment addPlugin: ClyReflectiveEnvironmentPlugin new
]

{ #category : #running }
ClyMethodCallCountersQueryTests >> tearDown [
	installedCounters do: [ :each | each uninstall ].
	installedCounters removeAll.
	
	super tearDown
]

{ #category : #tests }
ClyMethodCallCountersQueryTests >> testCheckIfEmpty [
	self installCounterInto: #methodWithCounter.
	query scope: (ClyMethodScope 
		of: (self class >> #methodWithCounter) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyMethodCallCountersQueryTests >> testDecoratingMethodWithExecutionCounter [

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installCounterInto: #methodWithCounter.
	method := self class >> #methodWithCounter.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithExecutionCounterTag)
]

{ #category : #tests }
ClyMethodCallCountersQueryTests >> testFromTwoMethods [
	self installCounterInto: #methodWithCounter.
	self queryFromScope: ClyMethodScope ofAll: {
		self class >> #methodWithCounter. 
		self class >> #methodWithoutCounter}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithCounter) 
]

{ #category : #tests }
ClyMethodCallCountersQueryTests >> testNotSelectsMethodWithoutCounter [

	self deny: (query selectsMethod: self class >> #methodWithoutCounter)
]

{ #category : #tests }
ClyMethodCallCountersQueryTests >> testSelectsMethodWithCounter [
	self installCounterInto: #methodWithCounter.

	self assert: (query selectsMethod: self class >> #methodWithCounter)
]
