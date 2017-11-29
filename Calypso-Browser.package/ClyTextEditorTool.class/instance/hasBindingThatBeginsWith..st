rubric interaction model
hasBindingThatBeginsWith: aString 
	^self selectedClassOrMetaClass 
		ifNil: [ false ]
		ifNotNil: [:c | c hasBindingThatBeginsWith: aString]