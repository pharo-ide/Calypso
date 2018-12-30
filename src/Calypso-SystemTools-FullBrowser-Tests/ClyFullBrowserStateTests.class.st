Class {
	#name : #ClyFullBrowserStateTests,
	#superclass : #ClyBrowserStateTestCase,
	#category : #'Calypso-SystemTools-FullBrowser-Tests'
}

{ #category : #running }
ClyFullBrowserStateTests >> restoreBrowserInstance [

	self snapshotState.
	
	navigationState applyTo: browser
]

{ #category : #running }
ClyFullBrowserStateTests >> setUp [
	super setUp.
	
	browser prepareInitialState
]

{ #category : #tests }
ClyFullBrowserStateTests >> testRestoredBrowserInstanceWithClassBrowserMode [
	
	| mode |
	mode := ClyClassBrowserMode new.
	mode metaLevelScope: #testScope.
	browser classBrowserMode: mode.
	
	self restoreBrowserInstance.
	
	self deny: browser classBrowserMode == mode.
	self assert: browser classBrowserMode equals: mode.
	self assert: browser classBrowserMode browser equals: browser
]

{ #category : #tests }
ClyFullBrowserStateTests >> testRestoredBrowserInstanceWithSystemScope [
	
	browser systemScope: #testScope.
	
	self restoreBrowserInstance.
	
	self assert: browser systemScope equals: #testScope
]

{ #category : #tests }
ClyFullBrowserStateTests >> testRetrievesClassBrowserMode [

	self snapshotState.
	
	self deny: navigationState classBrowserMode == browser classBrowserMode.
	self assert: navigationState classBrowserMode equals: browser classBrowserMode.
	self assert: navigationState classBrowserMode browser isNil
]

{ #category : #tests }
ClyFullBrowserStateTests >> testRetrievesSystemScope [

	self snapshotState.
	
	self assert: navigationState systemScope equals: environment systemScope
]
