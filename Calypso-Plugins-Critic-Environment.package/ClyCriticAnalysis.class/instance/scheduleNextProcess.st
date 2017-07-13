processing
scheduleNextProcess
	| nextProcess |
	guard critical: [ 
		processes remove: Processor activeProcess ifAbsent: []. 
		mainProcess == Processor activeProcess ifFalse: [ ^self].
		processes ifEmpty: [ mainProcess := nil. ^self ].
		
		nextProcess := processes last.
		nextProcess suspend.
		nextProcess isTerminated ifTrue: [
			"if there are cases when this happens 
			then we should organize loop to find next process which is not terminated yet"
			self error: 'should not happen']. 
	
		nextProcess priority: mainProcess priority.
		mainProcess := nextProcess.
		nextProcess resume ].