Class {
	#name : #ClyFullBrowserStateTest,
	#superclass : #ClyBrowserStateTestCase,
	#category : #'Calypso-SystemTools-FullBrowser-Tests'
}

{ #category : #running }
ClyFullBrowserStateTest >> restoreBrowserInstance [

	self snapshotState.
	
	navigationState applyTo: browser
]

{ #category : #running }
ClyFullBrowserStateTest >> setUp [
	super setUp.
	
	browser prepareInitialState
]

{ #category : #tests }
ClyFullBrowserStateTest >> testRestoredBrowserInstanceWithClassBrowserMode [
	
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
ClyFullBrowserStateTest >> testRestoredBrowserInstanceWithSystemScope [
	
	browser systemScope: #testScope.
	
	self restoreBrowserInstance.
	
	self assert: browser systemScope equals: #testScope
]

{ #category : #tests }
ClyFullBrowserStateTest >> testRetrievesClassBrowserMode [

	self snapshotState.
	
	self deny: navigationState classBrowserMode == browser classBrowserMode.
	self assert: navigationState classBrowserMode equals: browser classBrowserMode.
	self assert: navigationState classBrowserMode browser isNil
]

{ #category : #tests }
ClyFullBrowserStateTest >> testRetrievesSystemScope [

	self snapshotState.
	
	self assert: navigationState systemScope equals: environment systemScope
]
