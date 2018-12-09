Class {
	#name : #ClyMethodWatchpointsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#instVars : [
		'installedWatchpoints'
	],
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Tests-Watchpoints'
}

{ #category : #running }
ClyMethodWatchpointsQueryTests >> createQuery [
	^ClyMethodWatchpointsQuery from: ClyClassScope of: self class in: environment
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> installWatchpointInto: selector [
	| watchpoint |
	watchpoint := Watchpoint in: (self class >> selector) ast sendNodes last.
	installedWatchpoints add: watchpoint.
	^watchpoint
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> methodWithWatchpoint [
	"Currently watchpoint is only compatible with message nodes.
	So we can't install it directly on method node"
	^1+2
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> methodWithoutWatchpoint [
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> setUp [
	super setUp.
	
	installedWatchpoints := OrderedCollection new
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment addPlugin: ClyReflectiveEnvironmentPlugin new
]

{ #category : #running }
ClyMethodWatchpointsQueryTests >> tearDown [
	installedWatchpoints do: [ :each | each uninstall ].
	installedWatchpoints removeAll.
	
	super tearDown
]

{ #category : #tests }
ClyMethodWatchpointsQueryTests >> testCheckIfEmpty [
	self installWatchpointInto: #methodWithWatchpoint.
	query scope: (ClyMethodScope 
		of: (self class >> #methodWithWatchpoint) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyMethodWatchpointsQueryTests >> testDecoratingMethodWithExecutionCounter [

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installWatchpointInto: #methodWithWatchpoint.
	method := self class >> #methodWithWatchpoint.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithWatchpointTag)
]

{ #category : #tests }
ClyMethodWatchpointsQueryTests >> testFromTwoMethods [
	self installWatchpointInto: #methodWithWatchpoint.
	self queryFromScope: ClyMethodScope ofAll: {
		self class >> #methodWithWatchpoint. 
		self class >> #methodWithoutWatchpoint}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithWatchpoint) 
]

{ #category : #tests }
ClyMethodWatchpointsQueryTests >> testNotSelectsMethodWithoutWatchpoint [

	self deny: (query selectsMethod: self class >> #methodWithoutWatchpoint)
]

{ #category : #tests }
ClyMethodWatchpointsQueryTests >> testSelectsMethodWithWatchpoint [
	self installWatchpointInto: #methodWithWatchpoint.

	self assert: (query selectsMethod: self class >> #methodWithWatchpoint)
]
