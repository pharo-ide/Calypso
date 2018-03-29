queries
findItemsWith: actualObjects
	"it returns browser items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent then it will return nil in place of it"
	| indexes |
	^self protectItemsWhile: [
		indexes := self find: actualObjects comparingToActualItemsBy: [ :existing :sample | 
			existing 	calypsoEnvironmentType checkCalypsoItem: existing isEqualTo: sample].
		
		indexes collect: [ :each | 
			each ifNotNil: [ self itemAt: each ] ]]