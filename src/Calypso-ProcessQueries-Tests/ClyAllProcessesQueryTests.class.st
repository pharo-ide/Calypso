Class {
	#name : #ClyAllProcessesQueryTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyAllProcessesQueryTests >> createQuery [
	^ClyAllProcessesQuery from: environment systemScope
]

{ #category : #running }
ClyAllProcessesQueryTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyAllProcessesQueryTests >> testIncludesActiveProcess [
		
	self executeQuery.
		
	self assert: (resultItems includes: Processor activeProcess)
]

{ #category : #tests }
ClyAllProcessesQueryTests >> testIncludesNewProcess [
		
	| process1 |
	process1 := [  ] newProcess.
	self executeQuery.
		
	self assert: (resultItems includes: process1)
]

{ #category : #tests }
ClyAllProcessesQueryTests >> testNotIncludesTerminatedProcesses [
	
	| process |
	process := [  ] forkAt: Processor activePriority + 1.
	self assert: process isTerminated.
	
	self executeQuery.
		
	self deny: (resultItems includes: process)
]
