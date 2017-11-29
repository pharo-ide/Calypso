rubric interaction model
doItReceiver
	^self selectedClassOrMetaClass ifNotNil: [:class | class instanceSide]