Class {
	#name : #ClyActiveBreakpointsQueryTests,
	#superclass : #ClyMethodQueryTestCase,
	#instVars : [
		'installedBreakpoints'
	],
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Tests-Breakpoints'
}

{ #category : #running }
ClyActiveBreakpointsQueryTests >> createQuery [
	^ClyActiveBreakpointsQuery from: ClyClassScope of: ClyClassWithHalts in: environment
]

{ #category : #running }
ClyActiveBreakpointsQueryTests >> installBreakpointInto: aMethod [
	| breakpoint |
	breakpoint := Breakpoint new node: aMethod ast; always.
	installedBreakpoints add: breakpoint.
	breakpoint install
]

{ #category : #running }
ClyActiveBreakpointsQueryTests >> setUp [
	super setUp.
	
	installedBreakpoints := OrderedCollection new
]

{ #category : #running }
ClyActiveBreakpointsQueryTests >> tearDown [
	installedBreakpoints do: [ :each | each remove ].
	installedBreakpoints removeAll.
	
	super tearDown
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testCheckIfEmpty [
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	query scope: (ClyMethodScope 
		of: (ClyClassWithHalts >> #methodWithHalts1) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithBreakpoints) in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope
		of: (ClyClassWithBreakpoints >> #methodWithoutBreakpoints) in: environment).
	self assert: query checkEmptyResult
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testDecoratingMethodWithBreakpoint [

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	method := ClyClassWithBreakpoints >> #methodWithBreakpoints.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithBreakpointTag).
	self deny: (methodItem isMarkedWith: ClyMethodWithHaltTag).
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testDecoratingMethodWithHalt [

	| plugin method methodItem |
	plugin := ClyReflectiveEnvironmentPlugin new.
	method := ClyClassWithHalts >> #methodWithHalts1.
	methodItem := method asCalypsoBrowserItem.
		
	plugin decorateBrowserItem: methodItem ofMethod: method.
	
	self assert: (methodItem isMarkedWith: ClyMethodWithHaltTag).
	self deny: (methodItem isMarkedWith: ClyMethodWithBreakpointTag)
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testFromThreeMethods [
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).
	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithHalts >> #methodWithHalts1. 
		ClyClassWithBreakpoints >> #methodWithBreakpoints.
		ClyClassWithBreakpoints >> #methodWithoutBreakpoints}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithBreakpoints #methodWithHalts1) 
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testNotSelectsMethodWithoutBreakpoint [
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).

	self deny: (query selectsMethod: ClyClassWithBreakpoints >> #methodWithoutBreakpoints)
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testSelectsMethodWithBreakpoint [
	self installBreakpointInto: (ClyClassWithBreakpoints >> #methodWithBreakpoints).

	self assert: (query selectsMethod: ClyClassWithBreakpoints >> #methodWithBreakpoints)
]

{ #category : #tests }
ClyActiveBreakpointsQueryTests >> testSelectsMethodWithHalt [
	
	self assert: (query selectsMethod: ClyClassWithHalts>>#methodWithHalts1)
]
