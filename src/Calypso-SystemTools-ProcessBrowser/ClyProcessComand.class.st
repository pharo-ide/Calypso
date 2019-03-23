Class {
	#name : #ClyProcessComand,
	#superclass : #CmdCommand,
	#instVars : [
		'processes'
	],
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #execution }
ClyProcessComand class >> canBeExecutedInContext: aToolContext [
	^aToolContext isProcessSelected
]

{ #category : #'instance creation' }
ClyProcessComand class >> for: processes [
	^self new 
		processes: processes
]

{ #category : #testing }
ClyProcessComand class >> isAbstract [
	^self = ClyProcessComand 
]

{ #category : #execution }
ClyProcessComand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateBrowser
]

{ #category : #execution }
ClyProcessComand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	
	processes := aToolContext selectedProcesses
]

{ #category : #accessing }
ClyProcessComand >> processes [
	^ processes
]

{ #category : #accessing }
ClyProcessComand >> processes: anObject [
	processes := anObject
]
