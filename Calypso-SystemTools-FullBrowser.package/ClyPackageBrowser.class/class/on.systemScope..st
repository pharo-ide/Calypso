opening
on: aNavigationEnvironment systemScope: aSystemScope

	^self new 
		setUpAvailablePlugins;
		systemScope: aSystemScope;
		showEnvironment: aNavigationEnvironment