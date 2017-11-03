queries
findItemsWith: actualObjects
	"it returnes environment items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it.
	All returned items will be resilved"
	| found result foundIndex |
	result := actualObjects collect: [ :eachObject |
		foundIndex := actualResult items findFirst: [ :item | 
			item calypsoEnvironmentType checkCalypsoItem: item isEqualTo: eachObject ].
		foundIndex > 0 
			ifTrue: [ found := (actualResult itemAt: foundIndex) asCalypsoBrowserItem.
				found position: foundIndex.
				found prepareIn: self environment.
				found]
			ifFalse: [nil]].
	^result