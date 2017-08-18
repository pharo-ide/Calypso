instance creation
openOn: aNavigationEnvironment
	| browser |
	browser := self new.
	browser setUpAvailablePlugins.
	browser showProcessesIn: aNavigationEnvironment.
	browser open.
	^browser