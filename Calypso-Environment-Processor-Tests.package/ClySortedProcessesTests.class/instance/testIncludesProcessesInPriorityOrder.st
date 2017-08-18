tests
testIncludesProcessesInPriorityOrder
	
	| process1 process3 process2 indexes |
	process1 := [  ] newProcess priority: 30.
 	process3 := [  ] newProcess priority: 10.
	process2 := [  ] newProcess priority: 20.
	
	self retrieveContentFrom: environment systemScope.
	indexes := {process1. process2. process3} collect: [ :each | actualObjects indexOf: each ].
		
	self assert: indexes equals: indexes sorted asArray