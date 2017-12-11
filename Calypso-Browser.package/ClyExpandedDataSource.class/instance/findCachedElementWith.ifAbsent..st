private
findCachedElementWith: anEnvironmentItem ifAbsent: absentBlock

	^collapsedItems
		detect: [ :each | each actualObject == anEnvironmentItem actualObject ]
		ifNone: absentBlock