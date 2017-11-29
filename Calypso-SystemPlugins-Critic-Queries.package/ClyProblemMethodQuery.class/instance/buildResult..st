execution
buildResult: aQueryResult

	| allDone problemMethods result |
	allDone := true.
	problemMethods := OrderedCollection new.
	scope methodsDo: [ :each | 	
		result := scope systemCritic analyze: each.
		result isComplete 
			ifTrue: [ (self selectsMethod: each) ifTrue: [ problemMethods add: each ] ]
			ifFalse: [ allDone := false ]].
	allDone ifFalse: [ aQueryResult addMetaProperty: ClyBackgroundProcessingTag instance].
	aQueryResult fillWith: problemMethods.