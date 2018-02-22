I am a base class for status bar items related to particular browser tab (tool).
My subclasses should implement method #build where they should create required widgets and subscribe of required events.

My instance should be create for concrete browser tool: 

	ClyStatusBarItem for: aBrowserTool
	
Internal Representation and Key Implementation Points.

    Instance Variables
	ownerTool:		<ClyBrowserTool>