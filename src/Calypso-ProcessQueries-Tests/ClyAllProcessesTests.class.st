Class {
	#name : #ClyAllProcessesTests,
	#superclass : #ClyTypedQueryTestCase,
	#category : 'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #running }
ClyAllProcessesTests >> createQuery [
	^ClyAllProcesses from: environment systemScope
]

{ #category : #running }
ClyAllProcessesTests >> setUpEnvironment [
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage
]

{ #category : #tests }
ClyAllProcessesTests >> testIncludesActiveProcess [
		
	self executeQuery.
		
	self assert: (resultItems includes: Processor activeProcess)
]

{ #category : #tests }
ClyAllProcessesTests >> testIncludesNewProcess [
		
	| process1 |
	process1 := [  ] newProcess.
	self executeQuery.
		
	self assert: (resultItems includes: process1)
]

{ #category : #tests }
ClyAllProcessesTests >> testNotIncludesTerminatedProcesses [
	
	| process |
	process := [  ] forkAt: Processor activePriority + 1.
	self assert: process isTerminated.
	
	self executeQuery.
		
	self deny: (resultItems includes: process)
]
