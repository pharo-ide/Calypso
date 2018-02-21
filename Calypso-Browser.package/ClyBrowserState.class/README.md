I am a root of subclasses which represent the state of particular kind of browser.
I am used as navigation history items.

While subclasses can provide additional state they all include following properties: 
- viewStates, the collection of state of all navigation views, instances of ClyQueryViewState.
- selectedTabs, the colletion of selected browser tabs 
- systemScope, the system scope of the browser 

My instances are created with browser: 

	ClyBrowserState of: aBrowser

Or simply ask 
	
	aBrowser snapshotState

During initialization I retrieve the browser state in method #retrieveStateFrom:.

When history performs undo/redo operation it just applies particular browser state to the browser: 

	aBrowserState applyTo: aBrowser byUndo: true
	
Which calls simple #applyTo:. Extra agrument is required to support properly across window navigation.

Navigation history support accors window navigation to be able return back and forward between spawned windows.
It requires browser state to be able create browser instances from scratch because when we are trying to move back to original browser it can be already closed and not exists anymore.
So subclasses should implement #createBrowser method. It should just return new browser instance without any initialization logic. 	
 
Internal Representation and Key Implementation Points.

    Instance Variables
	viewStates:		<Collection of<ClyQueryViewState>>
	selectedTabs:		<Collection of<ClyBrowserTool>>
	systemScope:		<ClySystemScope>
