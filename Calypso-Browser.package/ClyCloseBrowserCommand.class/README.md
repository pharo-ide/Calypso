I am command to close browser window. 
There are already system shortcuts like "$w command" to close current window. But some morphs like tab manager are impementing it differently.
But in browser desired behaviour is to close full window instead of single tab. I override it by shortcut activator for source code context. When you edit code and press "$w command" I will close browser window. Also it fixes the case for method browser managed by tabs group window. Before "$w command" keep empty tab without closing it.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>