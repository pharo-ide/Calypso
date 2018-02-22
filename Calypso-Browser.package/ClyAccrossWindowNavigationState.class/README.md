I represent the state of the browser which spawn another browser.
I am recorded as first item in navigation history of spawned browser.
When I am applied to the browser I close it and activate original one using window reference. If window is closed I recreate new browser instance from scratch.
I keep all original browser parameters in my variables including its own navigation history. So recreated browser instances is ready to continue go back in history. 

Notice that I do not keep reference to original browser. I keep reference to window. When window is closing the browser cleans references to it. So closed window do not reference browser.

To create my instance use following expression: 

	ClyAccrossWindowNavigationState from: aBrowser 
	
Internal Representation and Key Implementation Points.

    Instance Variables
	browserPlugins:		<Collection of<ClyBrowserPlugin>>
	browserState:		<ClyBrowserState>
	navigationEnvironment:		<ClyNavigationEnvironment>
	navigationHistory:		<ClyNavigationHistory>
	window:		<SystemWindow>
	windowGroup:		<ClyGroupWindowMorph>