Class {
	#name : #ClyActiveContextOfProcessesQueryTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyActiveContextOfProcessesQueryTests >> createQuery [
	^ClyActiveContextOfProcessesQuery from: environment systemScope
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTests >> testFromActiveProcess [
	
	self queryFromScope: ClyProcessScope of: Processor activeProcess.
		
	self assert: resultItems notEmpty
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTests >> testFromBackgroundProcess [
	| process |
	process := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope of: process.
		
	self assert: resultItems anyOne == process suspendedContext
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTests >> testFromTwoBackgroundProcesses [
	| process process2 |
	process := [ 1 minute wait ] fork.
	process2 := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope ofAll: { process. process2}.
	
	self 
		assert: resultItems asIdentitySet 
		equals: {process suspendedContext. process2 suspendedContext} asIdentitySet.	
]
