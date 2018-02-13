tests
testAscending
	| process1 process2 |
	process1 := [  ] newProcess priority: 20.
 	process2 := [  ] newProcess priority: 30.
	
	function := ClySortProcessByPriorityFunction ascending.
	
	self deny: (function value: process2 value: process1 ).
	self assert: (function value: process1 value: process2 ).
	self assert: (function value: process1 value: process1 )