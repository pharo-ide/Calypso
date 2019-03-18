Class {
	#name : #ClySortProcessByPriorityFunctionTest,
	#superclass : #ClySortFunctionTestCase,
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #tests }
ClySortProcessByPriorityFunctionTest >> testAscending [
	| process1 process2 |
	process1 := [  ] newProcess priority: 20.
 	process2 := [  ] newProcess priority: 30.
	
	function := ClySortProcessByPriorityFunction ascending.
	
	self deny: (function value: process2 value: process1 ).
	self assert: (function value: process1 value: process2 ).
	self assert: (function value: process1 value: process1 )
]

{ #category : #tests }
ClySortProcessByPriorityFunctionTest >> testDescending [
	| process1 process2 |
	process1 := [  ] newProcess priority: 20.
 	process2 := [  ] newProcess priority: 30.
	
	function := ClySortProcessByPriorityFunction descending.
	
	self assert: (function value: process2 value: process1 ).
	self deny: (function value: process1 value: process2 ).
	self assert: (function value: process1 value: process1 )
]
