initialization
prepareRawQueryFrom: aQuery
	"Async result adapter should use async query as building query 
	with original async result which it wraps"
	^aQuery async 
		asyncResult: rawResult