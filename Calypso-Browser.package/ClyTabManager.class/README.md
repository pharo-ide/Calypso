I manage tabs in the browser.
Any tab in browser is represented by ClyBrowserTool subclasses.
And my responsibility is to show all appropriate tools which are relevant to the current browser context (state). 
#updateTools method is doing that. 

The logic is simple: 
When selection (browser context) is changed then browser collects new tools which should be opened in that new browser state. 
Then it removes all old tools and open all new tools. 
But there is special case when new collected tool is already opened. In that case such new tool will be not used. And existing tool will be not removed. So it will stay opened.

I use #isSimilarTo: tab method to detect that new collected tool is already opened (the browser already shows similar tool).
By default #isSimilarTo: simply checks the class of given tool. My subclases should redefine it when they include extra state because otherwise new tool instance will never replace old one (browser will think that it is already opened).

There are cases when existing tools are not closed when selection is changed. For example when method editor is dirty and you select another method.
In that case dirty method will indicate that it is now do not belongs to the context of browser.
Tools implement method #belongsToCurrentBrowserContext to support this logic.
For example method editor checks that browser still selects editing method.

There is one complex part of my behaviour: the way how I choose what tab should be selected.
In simple cases I just select the tab with lagest value of #activationPriority. But it is not enough.
Problem that user want to keep current selected tab (the kind of tab) when he selects another item in the table.
For example in full browser user can select class. It will automatically selects the tab with class definition because it has the most activation priority.
But then user can select class comment tab and switch to another class. The desired behaviour is to keep comment tab selected for this newly selected class.

And for this logic I maintain desired set of selected tool in the variable desiredSelection.
It adds and removes items when user manually selects tabs.
But in addition browser fills it with tools which are relevant for manually selected table.
Every time user selects new item in the table the browser collects tools which are relevant for this new selection and it passes them to me as new desired selection. 

So at the end I always select tab with most activation priority which exists in desiredSelection list.

By default activationPriority is equal to #tabOrder which defines general order between tabs.

My instances are created on the browser: 

	ClyTabManager of: aBrowser
	
Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>
	selectionPriorities:		<Dictionary<ClyBrowserTool class, Number>>
	tabMorph:		<TabManagerMorph>
	tools:		<Collection of<ClyBrowserTool>>
	updatingStarted:		<Boolean>
	desiredSelection: <Set of<ClyBrowserTool class>>