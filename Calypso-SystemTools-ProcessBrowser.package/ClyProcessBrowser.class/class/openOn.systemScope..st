opening
openOn: aNavigationEnvironment systemScope: aSystemScope
	| browser |
	browser := self new.
	browser 
		setUpAvailablePlugins;
		systemScope: aSystemScope;
		showProcessesIn: aNavigationEnvironment;
		open.
	^browser