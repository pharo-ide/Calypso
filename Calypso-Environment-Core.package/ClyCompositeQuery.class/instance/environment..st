accessing
environment: aNavigationEnvironment
	super environment: aNavigationEnvironment.
	
	subqueries do: [ :each | each environment: aNavigationEnvironment]