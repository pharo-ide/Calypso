instance creation
on: aNavigationEnvironment scopes: scopes

	^self new 
		navigationEnvironment: aNavigationEnvironment;
		queryScopes: scopes;
		setUpAvailablePlugins