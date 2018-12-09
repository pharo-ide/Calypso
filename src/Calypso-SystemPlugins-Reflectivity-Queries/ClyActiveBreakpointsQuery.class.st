"
I return all methods which have installed breakpoints or send the halt message (and friends like haltIf:)
"
Class {
	#name : #ClyActiveBreakpointsQuery,
	#superclass : #ClyMethodQuery,
	#category : #'Calypso-SystemPlugins-Reflectivity-Queries-Breakpoints'
}

{ #category : #printing }
ClyActiveBreakpointsQuery >> description [
	^'active breakpoints'
]

{ #category : #testing }
ClyActiveBreakpointsQuery >> selectsMethod: aMethod [
	^aMethod hasBreakpoint or: [ aMethod containsHalt ]
]
