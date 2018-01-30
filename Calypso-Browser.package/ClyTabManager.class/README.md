@TODO.

The logic to build tabs is simple: when selection (browser context) is changed then browser collects new tools which should be opened in that new browser state. Then it removes all old tools and open all new tools. But there is case when new collected tool is already opened. In that case such new instance will be not used. And existing instance will be not removed. So it will stay opened.
And #isSimilarTo: method is used to detect that new collected tool is already opened. It means that browser already shows similar tool.(edited)
There are cases when existing tools are not closed when selection is changed. For example when method editor is dirty and you select another method
In that case dirty method will indicate that it is now do not belongs to the context of browser.
And this method #belongsToCurrentBrowserContext is used for this
In case of method editor it checks that browser still selects editing method.

So by default #isSimilarTo: simply checks the class of given tool. And if concrete tool have extra state then it should override it because otherwise new tool instance will never be opened.

Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>
	selectionPriorities:		<Dictionary<ClyBrowserTool class, Number>>
	tabMorph:		<TabManagerMorph>
	tools:		<Collection of<ClyBrowserTool>>
	updatingStarted:		<Boolean>


    Implementation Points