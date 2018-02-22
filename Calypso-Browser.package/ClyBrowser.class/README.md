I am a base class for various browser implementations.
My main subcasses are ClyFullBrowser and ClyQueryBrowser.

I provide UI layout structure for my subclasses:

- all navigation view occupy the top half of the browser.
- the tabs panel is placed at the bottom half of the browser.
- and the toolbar is placed at the middle.

Navigation is represented by ClyQueryView instances placed from left to right which reflects the flow of navigation: selection in the left panel leads to the new content at the right panel.
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
	 
Look at ClyQueryView to find more possible settings and browser senders of #newNavigationView (for example you can add more columns to the view).

To setup content of the navigation views you should implement method #prepareInitialState. For the package view example it can be: 

	packages := ClyAllPackages sortedFrom: self systemScope.
	packageView showQuery: packages 

You do not need to set up the content of all navigation views. They have kind of empty data source by default.
During navigation you will configure them in the navigation request methods. You will create appropriate queries for them based on new selected objects.

And last responsibility of subclasses is to implement #newWindowTitle. It is used to setup the title of window which contains the browser. And it is updated when state of browser is changed.

I implement logic how and when rebuild tabs and toolbar. Any browser change should be wrapped by method #changeStateBy:

	browser changeStateBy: [ packageView selection selectItemsWith: { 'Kernel' asPackage } ]
	
Any selection change can lead to the changes in all related navigation views which follow navigation flow.
I ensure in this method that tabs and toolbar will be rebuilt only when navigation will be completely finished. 
So only when all views will set new content and selection I will update tabs and toolbar.

Also I manage navigation history by allowing go back and forward in the browser. 
And this method also ensures that intermidiate navigation states will not be considered as navigation. 
So many selection changes can be triggered from single #changeStateBy: call. But I will add only one item to the history.

I provide two methods to force go back and forward navigation: 

	browser navigateBack.
	browser navigateForward.

For more details on history implementation look at ClyNavigationHistory.

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