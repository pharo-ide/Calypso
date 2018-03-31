queries
itemsWith: actualObjects
	"It returns items which represent given actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent then it will be nil in place of it.
	We always try to find items in cache and only then ask full result for them"
	
	^cache findItemsWith: actualObjects forAbsentDo: [ 
		^queryResult itemsWith: actualObjects]