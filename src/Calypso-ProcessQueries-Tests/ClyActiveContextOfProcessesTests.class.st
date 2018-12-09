Class {
	#name : #ClyActiveContextOfProcessesTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : 'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyActiveContextOfProcessesTests >> createQuery [
	^ClyActiveContextOfProcessesQuery from: environment systemScope
]

{ #category : #tests }
ClyActiveContextOfProcessesTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyActiveContextOfProcessesTests >> testFromActiveProcess [
	
	self queryFromScope: ClyProcessScope of: Processor activeProcess.
		
	self assert: resultItems notEmpty
]

{ #category : #tests }
ClyActiveContextOfProcessesTests >> testFromBackgroundProcess [
	| process |
	process := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope of: process.
		
	self assert: resultItems anyOne == process suspendedContext
]

{ #category : #tests }
ClyActiveContextOfProcessesTests >> testFromTwoBackgroundProcesses [
	| process process2 |
	process := [ 1 minute wait ] fork.
	process2 := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope ofAll: { process. process2}.
	
	self 
		assert: resultItems asIdentitySet 
		equals: {process suspendedContext. process2 suspendedContext} asIdentitySet.	
]
