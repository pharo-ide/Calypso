private
findCachedElementWith: anEnvironmentItem ifAbsent: absentBlock

	^expandedItems 
		detect: [ :each | each actualObject == anEnvironmentItem actualObject ]
		ifNone: absentBlock