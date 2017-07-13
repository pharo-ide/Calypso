processing
process: anObject

	| newProcess |
	
	newProcess := [ self analyze: anObject ] newProcess.
	newProcess name: 'Critic analysis for ', anObject printString.
	newProcess priority: processingPriority.

	guard critical: [ 
		"if new process was requested from another analysis we should not reschedule it"
		mainProcess notNil & (mainProcess ~~ Processor activeProcess) ifTrue: [ 		
			"I delay main process in order to serve new one as first. 
			If main process is current process which request aditional analysis 
			then ifTrue: case will skip it"
			mainProcess suspend.
			mainProcess isTerminated ifTrue: [ self error: 'should not happen because of guard' ].
			mainProcess priority: processingPriority - 1.
			mainProcess resume.
			mainProcess := newProcess ].	
		mainProcess ifNil: [ mainProcess := newProcess ]. "in case it is first requested process"		
		processes add: newProcess.		
		newProcess resume.
	]