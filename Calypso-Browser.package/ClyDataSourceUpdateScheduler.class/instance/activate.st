controlling
activate
	(process notNil and: [ process isTerminated not ]) ifTrue: [ ^self].
	
	process := [ self processQueue ] 
		forkAt: Processor activePriority - 1 named: 'Calypso update'.