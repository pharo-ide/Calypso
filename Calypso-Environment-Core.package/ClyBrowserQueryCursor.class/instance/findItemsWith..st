queries
findItemsWith: actualObjects
	"it returnes environment items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it.
	We always try to find items in cache and then ask content for it"
	
	^cache findItemsWith: actualObjects forAbsentDo: [ 
		^queryResult findItemsWith: actualObjects]