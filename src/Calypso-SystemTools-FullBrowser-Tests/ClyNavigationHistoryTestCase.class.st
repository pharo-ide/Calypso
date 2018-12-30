Class {
	#name : #ClyNavigationHistoryTestCase,
	#superclass : #TestCase,
	#instVars : [
		'environment',
		'browser',
		'navigationState'
	],
	#category : #'Calypso-SystemTools-FullBrowser-Tests'
}

{ #category : #testing }
ClyNavigationHistoryTestCase class >> isAbstract [
	^self == ClyNavigationHistoryTestCase
]

{ #category : #running }
ClyNavigationHistoryTestCase >> createBrowser [
	^(ClyFullBrowser on: environment)
		prepareInitialState 
]

{ #category : #running }
ClyNavigationHistoryTestCase >> setUp [
	super setUp.
	
	environment := ClyNavigationEnvironment overSystemEnvironment: ClySystemEnvironment currentImage.
	environment detachFromSystem "to ensure no subscriptions".
	
	browser := self createBrowser.
	browser navigationEnvironment: environment.
	browser plugins removeAll.
]

{ #category : #running }
ClyNavigationHistoryTestCase >> snapshotState [
	self subclassResponsibility 
]
