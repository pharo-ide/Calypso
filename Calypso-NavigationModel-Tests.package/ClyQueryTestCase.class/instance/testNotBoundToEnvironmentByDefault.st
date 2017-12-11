tests
testNotBoundToEnvironmentByDefault

	query := query class new.
	self deny: query isBoundToEnvironment 