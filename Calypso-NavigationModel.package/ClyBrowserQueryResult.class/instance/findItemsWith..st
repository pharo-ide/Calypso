queries
findItemsWith: actualObjects
	"it returnes browser items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it"
	| indexes |
	^self protectItemsWhile: [
		indexes := self findRawItems: actualObjects comparingBy: [ :existing :given | 
			existing 	calypsoEnvironmentType checkCalypsoItem: existing isEqualTo: given].
		
		indexes collect: [ :each | 
			each ifNotNil: [ self itemAt: each ] ]]