accessing
observedContent: anEnvironmentContent
	observedContent := anEnvironmentContent.
	position := 0.
	cache := ClyEnvironmentContentCache initialFor: observedContent size: 50.
	metadata := observedContent metadata.
	"we need to retrieve metadata ahead of time to avoid future requests to content about it.
	It is important for remote scenario.
	It is safe to do it because metadata is never changed"