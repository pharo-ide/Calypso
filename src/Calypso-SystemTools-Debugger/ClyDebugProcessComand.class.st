Class {
	#name : #ClyDebugProcessComand,
	#superclass : #CmdCommand,
	#instVars : [
		'environment',
		'process'
	],
	#category : 'Calypso-SystemTools-Debugger'
}

{ #category : #execution }
ClyDebugProcessComand class >> canBeExecutedInContext: aToolContext [
	^aToolContext isProcessSelected
]

{ #category : #'instance creation' }
ClyDebugProcessComand class >> for: aProcessStack [
	^self new 
		process: aProcessStack
]

{ #category : #testing }
ClyDebugProcessComand class >> isAbstract [
	^self = ClyDebugProcessComand 
]

{ #category : #execution }
ClyDebugProcessComand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateBrowser
]

{ #category : #execution }
ClyDebugProcessComand >> prepareFullExecutionInContext: aBrowserContext [
	super prepareFullExecutionInContext: aBrowserContext.
	
	environment := aBrowserContext navigationEnvironment.
	process := aBrowserContext lastSelectedProcess
]

{ #category : #accessing }
ClyDebugProcessComand >> process [
	^ process
]

{ #category : #accessing }
ClyDebugProcessComand >> process: anObject [
	process := anObject
]
