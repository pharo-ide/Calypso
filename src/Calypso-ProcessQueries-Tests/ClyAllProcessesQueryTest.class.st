Class {
	#name : #ClyAllProcessesQueryTest,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyAllProcessesQueryTest >> createQuery [
	^ClyAllProcessesQuery from: environment systemScope
]

{ #category : #running }
ClyAllProcessesQueryTest >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyAllProcessesQueryTest >> testIncludesActiveProcess [
		
	self executeQuery.
		
	self assert: (resultItems includes: Processor activeProcess)
]

{ #category : #tests }
ClyAllProcessesQueryTest >> testIncludesNewProcess [
		
	| process1 |
	process1 := [  ] newProcess.
	self executeQuery.
		
	self assert: (resultItems includes: process1)
]

{ #category : #tests }
ClyAllProcessesQueryTest >> testNotIncludesTerminatedProcesses [
	
	| process |
	process := [  ] forkAt: Processor activePriority + 1.
	self assert: process isTerminated.
	
	self executeQuery.
		
	self deny: (resultItems includes: process)
]
