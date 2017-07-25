private
createBrowser
	| newBrowser |
	newBrowser := browserState createBrowser.
	
	browserPlugins do: [:each | newBrowser addPlugin: each copy ].
	newBrowser navigationEnvironment: navigationEnvironment.
	newBrowser navigationHistory: navigationHistory.
	browserState restoreStateOf: newBrowser.
	
	^newBrowser