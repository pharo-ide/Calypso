I am a base class for various browser implementations.
My main subcasses are ClyFullBrowser (for an advanced 4 panes browser) and ClyQueryBrowser (to display results of senders/implementors/...).

I provide UI layout structure for my subclasses:

- all navigation views occupy the top half of the browser.
- the tabs panel is placed at the bottom half of the browser.
- and the toolbar is placed at the middle.

Navigation is represented by ClyQueryView(Morph) instances placed from left to right. This reflects the flow of navigation: selection in the left panel leads to the new content at the right panel.

!! Example of Queries 

I create query instances using current state like selections, metalevel scope (class/inst side) and current queries themselves. 
In some cases it is quite complex logic and it requires interaction between different objects. For exampe the construction logic of methodGroupQuery is very complex:
	- the different query class for variable mode (vars in protocols pane)
	- in variable mode the scope is different (vars are shown from all superclasses)
	- extra query composition when query is build from scope of extended classes (grey classes are selected)
	- extra logic to allow default traits visibility
	- some other details.
(it could be extracted to new kind of queries and scopes)

!! Browser Logic 
Another part of browser logic is defined in methods like #selectMethod:, #selectClass:, selectPackage:. A browser knows that to select method it should first select its class. To select class it should first select its package. In some cases it is also not trivial logic. Look at selectClass: method. 

Ideally browser should be a model itself independently from UI.  But this point deserves another iteration. The main concern of the current version was to introduce queries to manage browser state. It simplifies a lot of behaviour but it still not enough to get really clean solution. 


!! Browser contexts 

Browser contexts are not for maintaining the state. They only represent possible state of components. They are approach to have pluggability points for commands, tabs, toolbars and table decorators. Remember that commands are annotated with activators for particular context where they should be used. Exactly the same logic is used for other parts of browser. Everything you read in Commander chapter is applicable for tabs, table decorators and toolbar items. Tabs are annotated with ClyTabActivationStrategy. Table decorators are annotated with ClyTableDecorationStrategy.

So a browser collects contexts from children because otherwise children will need to know about toolbar and tabs. Now they only know the browser. Also all contexts are used to build spotter command menu (cmd+/). Query views has no information about it.  


!! Browser changes 

I implement logic how and when rebuild tabs and toolbar. Any browser change should be wrapped by method #changeStateBy:

	browser changeStateBy: [ packageView selection selectItemsWith: { 'Kernel' asPackage } ]
	
Any selection change can lead to the changes in all related navigation views which follow navigation flow. I ensure in this method that tabs and toolbar will be rebuilt only when navigation will be completely finished. However this is only when all views will set new content and selection that I will update tabs and toolbar.

Also I manage navigation history by allowing go back and forward in the browser. And this method also ensures that intermediate navigation states will not be considered as navigation. Many selection changes can be triggered from single #changeStateBy: call. But I will add only one item to the history.

I provide two methods to force go back and forward navigation: 

	browser navigateBack.
	browser navigateForward.

For more details on history implementation look at ClyNavigationHistory.





!! How to create new browsers


Subclasses should implement #initializeNavigationViews to configure the number of navigation panes and their properties.
They should create navigation views using #newNavigationView message: 

	packageView := self newNavigationView.
	
The content of view should be set in another methods (see bellow). During initialization you should only configure structure of the view.
For example by default created view will show single column with the name of item.
But you can configure different label using following method: 

	packageView mainColumn 
		displayItemPropertyBy: [:packageItem | packageItem name, packageItem actualObject classes size asString].

(the argument of the block is instance of ClyDataSourceItem which wrap actual object retrieved by query).

Also to describe navigation flow you should setup selector which should called when user will select any item: 
	
	packageView requestNavigationBy: #packageSelectionChanged.
	 
Look at ClyQueryView(Morph) to find more possible settings and browser senders of #newNavigationView (for example you can add more columns to the view).

To setup the content of the navigation views you should implement method #prepareInitialState. For the package view example it can be: 

	packages := ClyAllPackages sortedFrom: self systemScope.
	packageView showQuery: packages 

You do not need to set up the content of all navigation views. They have kind of empty data source by default.
During navigation you will configure them in the navigation request methods. You will create appropriate queries for them based on new selected objects.

The last responsibility of subclasses is to implement #newWindowTitle. It is used to setup the title of window which contains the browser. And it is updated when state of browser is changed.









Internal Representation and Key Implementation Points.

    Instance Variables
	navigationEnvironment:		<ClyNavigationEnvironment>
	navigationHistory:		<ClyNavigationHistory>
	navigationPanel:		<Morph>
	navigationStarted:		<Boolean>
	navigationViews:		<OrderedCollection of<ClyQueryView>>
	plugins:		<Collection of<ClyBrowserPlugin>>
	systemScope:		<ClySystemScope>
	tabManager:		<ClyTabManager>
	toolPanel:		<Morph>
	toolbar:		<ClyToolbar>