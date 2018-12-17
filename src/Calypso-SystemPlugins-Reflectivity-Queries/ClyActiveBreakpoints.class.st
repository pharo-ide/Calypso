"
I return all methods which have installed breakpoints or send the halt message (and friends like haltIf:)
"
Class {
	#name : #ClyActiveBreakpoints,
	#superclass : #ClyMethodQuery,
	#instVars : [
		'excludesHaltsForTesting'
	],
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Breakpoints'
}

{ #category : #'instance creation' }
ClyActiveBreakpoints class >> new [
	| cab |
	cab := super new.
	cab excludesHaltsForTesting: false.
	^ cab.
]

{ #category : #'instance creation' }
ClyActiveBreakpoints class >> newExcludingHaltsForTesting [
	| cab |
	cab := super new.
	cab excludesHaltsForTesting: true.
	^ cab.
]

{ #category : #printing }
ClyActiveBreakpoints >> description [
	^'active breakpoints'
]

{ #category : #accessing }
ClyActiveBreakpoints >> excludesHaltsForTesting [
	^ excludesHaltsForTesting
]

{ #category : #accessing }
ClyActiveBreakpoints >> excludesHaltsForTesting: anObject [
	excludesHaltsForTesting := anObject
]

{ #category : #testing }
ClyActiveBreakpoints >> selectsMethod: aMethod [
	"If the method does not contain halts or breakpoints, we do not show it"
	(aMethod hasBreakpoint or: [ aMethod containsHalt ]) ifFalse: [ ^false ].
	"If the method contains halts or breakpoints and we are not exclude halts for testing, we show it"
	(self excludesHaltsForTesting) ifFalse: [ ^true. ].
	"If we are excluding methods with halts for testing, we show the method if it has not been marked as containing halts for tests"
	^ (aMethod hasPragmaNamed: #haltOrBreakpointForTesting) not.
]
