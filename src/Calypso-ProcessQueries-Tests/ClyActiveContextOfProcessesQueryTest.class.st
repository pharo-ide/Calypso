Class {
	#name : #ClyActiveContextOfProcessesQueryTest,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyActiveContextOfProcessesQueryTest >> createQuery [
	^ClyActiveContextOfProcessesQuery from: environment systemScope
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTest >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTest >> testFromActiveProcess [
	
	self queryFromScope: ClyProcessScope of: Processor activeProcess.
		
	self assert: resultItems notEmpty
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTest >> testFromBackgroundProcess [
	| process |
	process := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope of: process.
		
	self assert: resultItems anyOne == process suspendedContext
]

{ #category : #tests }
ClyActiveContextOfProcessesQueryTest >> testFromTwoBackgroundProcesses [
	| process process2 |
	process := [ 1 minute wait ] fork.
	process2 := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope ofAll: { process. process2}.
	
	self 
		assert: resultItems asIdentitySet 
		equals: {process suspendedContext. process2 suspendedContext} asIdentitySet.	
]
