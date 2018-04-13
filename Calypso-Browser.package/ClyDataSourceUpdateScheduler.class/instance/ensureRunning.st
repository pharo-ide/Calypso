controlling
ensureRunning
	(process notNil and: [ process isTerminated not ]) ifTrue: [ ^self].
	
	process := [ self processQueue ] 
		forkAt: Processor userBackgroundPriority + 1 named: 'Calypso update'