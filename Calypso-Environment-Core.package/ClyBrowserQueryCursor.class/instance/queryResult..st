accessing
queryResult: anEnvironmentContent
	queryResult := anEnvironmentContent.
	position := 0.
	cache := ClyQueryCursorCache initialFor: queryResult size: 50.
	metadata := queryResult metadata.
	"we need to retrieve metadata ahead of time to avoid future requests to content about it.
	It is important for remote scenario.
	It is safe to do it because metadata is never changed"