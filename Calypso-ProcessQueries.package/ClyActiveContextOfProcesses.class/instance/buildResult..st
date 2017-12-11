execution
buildResult: aQueryResult
	
	| contexts activeContext |
	contexts := OrderedCollection new.
	scope processesDo: [ :each | 
		activeContext := each suspendedContext ifNil: [
			each == Processor activeProcess 
				ifTrue: [thisContext sender]
				ifFalse: [ self error: 'should not happen' ]].
		contexts add: activeContext	].
		
	aQueryResult fillWith: contexts