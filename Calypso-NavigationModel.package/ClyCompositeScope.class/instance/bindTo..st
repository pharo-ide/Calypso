accessing
bindTo: aNavigationEnvironment
	super bindTo: aNavigationEnvironment.
	
	subscopes do: [ :each | each bindTo: aNavigationEnvironment]