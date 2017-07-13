accessing
buildSubgroupItems
	^super buildSubgroupItems
		asSortedCollection: [ :a :b | a name < b name ]