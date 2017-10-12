accessing
environment: aNavigationEnvironment
	environment := aNavigationEnvironment.
	basisObjects ifNotEmpty: [ basisType := basisObjects anyOne calypsoEnvironmentType ]