"
I return all methods which have installed breakpoints or send the halt message (and friends like haltIf:)
"
Class {
	#name : #ClyActiveBreakpoints,
	#superclass : #ClyMethodQuery,
	#instVars : [
		'excludeHaltsForTesting'
	],
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Breakpoints'
}

{ #category : #'instance creation' }
ClyActiveBreakpoints class >> new [
	| cab |
	cab := super new.
	cab excludeHaltsForTesting: false.
	^ cab.
]

{ #category : #'instance creation' }
ClyActiveBreakpoints class >> newExcludingHaltsForTesting [
	| cab |
	cab := super new.
	cab excludeHaltsForTesting: true.
	^ cab.
]

{ #category : #printing }
ClyActiveBreakpoints >> description [
	^'active breakpoints'
]

{ #category : #accessing }
ClyActiveBreakpoints >> excludeHaltsForTesting [
	^ excludeHaltsForTesting
]

{ #category : #accessing }
ClyActiveBreakpoints >> excludeHaltsForTesting: anObject [
	excludeHaltsForTesting := anObject
]

{ #category : #testing }
ClyActiveBreakpoints >> selectsMethod: aMethod [
	"If the method does not contain halts or breakpoints, we do not show it"
	(aMethod hasBreakpoint or: [ aMethod containsHalt ]) ifFalse: [ ^false ].
	"If the method contains halts or breakpoints and we are not exclude halts for testing, we show it"
	(self excludeHaltsForTesting) ifFalse: [ ^true. ].
	"If we are excluding methods with halts for testing, we show the method if it has not been marked as containing halts for tests"
	^ (aMethod hasPragmaNamed: #haltOrBreakpointForTesting) not.
]
