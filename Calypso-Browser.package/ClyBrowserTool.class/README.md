I am a root of browser tabs hierarchy.
My subclasses should implement single method #build where they should create and add required widgets.

The build is always executed in background due to the TabManagerMorph logic.

Tab manager collects all subclasses which should be opened for current browser state.
It lookups tools annotated with ClyTabActivationStrategy for current browser context.

So to enable any tool in the browser you should annotated it with еру strategy for appropriate context where tool should be opened.
For example:

	ClyMethodCodeEditorTool class>>methodTabActivation
		<classAnnotation>
		^ClyTabActivationStrategy for: ClyMethod asCalypsoItemContext

It will open method editor when method is selected in the browser.	

Subclasses can define extra condition to check that they can be opened in particular browser context instance.
They should override class side method: 

- shouldBeActivatedInContext: aBrowserContext

It returns true by default.

Also abstract subclasses are never opened in the browser. By default the tool is abstract if it has subclasses.
The class side method #isAbstact should be overridden if this default condition is not valid.

Tab instances are created with browser context 

	ClyBrowserTool for: aBrowser inContext: aBrowserContext
	
Subclasses should implement initialization methods to retrieve required state from the given context:

- setUpModelFromContext
- setUpParametersFromModel

Last method is also used to update tool when model is changed.

Subclasses should override method #isSimilarTo: to compare with another tool which has same parameters.
For example ClyMethodCodeEditorTool checks that other method editor is based on same method.
#isSimilarTo: method is used by ClyTabManager to update existing tabs in new browser state. If similar tool is already opened in browser then it will be not replaced by new instance.
Look ClyTabManager comments for details.

Tab manager never close dirty tabs when browser selection is changed. Instead if ask the tool to indicate different browser context.
To support this logic tools should implement following methods: 

- belongsToCurrentBrowserContext
For example method editor checks that browser still selects editing method.

- warnUserAboutMyContext
Here the tool is supposed to reset any indication of different context. It happens when user move selection back where dirty tab should be opened again. 

- warnUserAboutDifferentContext
Here the tool can indicate that it is now is untouched from the current browser state. For example when user selects new method while dirty method is still opened. 

- warnUserAboutChangedContext
It just merges previous two methods by testing for #belongsToCurrentBrowserContext.

To support dirty state subclasses should implement method #hasUnacceptedEdits. It is false by default.
And indication of dirtiness can be overridden in the method #updateDirtyState. By default it just adds * to the tab title. 

- hasUnacceptedEdits (false by default)
- updateDirtyState

So tabs are based on some models. For example method editor model is a method. 
When tool model is removed from system (method is removed) the tab should be automatically closed.
Tab manager detects such conditions using following method which tools should implement:

- belongsToRemovedBrowserContext

For example method editor checks that editing method was removed from system.

So the model of the tool can be modified and therefore the tool should implement update logic using following methods:

- attachToSystem
It should subscribe the tool for model changes.

- detachFromSystem
It should unsubscribe the tool from the model.

In addition I provide method #update which subclasses should reuse in the update logic of the method changes.
#update refreshes basic visual properties of tool retrieved from the model and it rebuilds status bar.

TabManager orders retrieved tools using method #tabOrder.
Also manager chooses what tab should be selected first. It selects the tool with highest #activationPriority which is equal to #tabOrder by default.
In general tab selection logic is more complex. Look at ClyTabManager comments for details.

To specify tab title and icon subclasses can implement following methods: 

- defaultIconName
- defaultIcon (to be able create dynamic icon instance when simple icon name is not enough)
- defaultTitle (by default it is the name of current selected item in the browser or just a tool class name if nothing selected)

I provide status bar. And subclasses can add items to it in the method: 

- fillStatusBar

Any tool can be decorated by browser plugins which can inject other widgets or modify general style of the tool.
Plugins add decorators using following method: 
	
	aBrowserTool addDecorator: aBrowserToolDecorator

And at the end of building process I apply all configured decorators:

	self applyDecorations
	
Notice that full tab building logic is implemented in the method: 

- buildAndDecorate

To remove the tool from browser just call #removeFromBrowser method.

Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>
	containerTab:		<TabMorph>
	context:		<ClyBrowserContext>
	decorators:		<OrderedCollection of<ClyBrowserToolDecorator>>
	isDirty:		<Boolean>
	isManagedByUser:		<Boolean>
	statusBar:		<ClyStatusBar>