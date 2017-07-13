I represent navigation tool over table of environment items.
I should be created for browser:
	ClyNavigationView for: aBrowser
or using helper browser method:
	aBrowser newNavigationView.
By default I am include only main column, the instance of ClyMainTableColumn. You can ask it to set up specific column properties
	aNavigationView mainColumn 
		width: 100;
		displayItemPropertyBy: [:rowItem | rowItem name, 'special name suffix for test' ].
Or you can set up display block using:
	aNavigationView displayMainColumnBy: [ :cell :item | 
		cell nameMorph contents: item name.
		cell nameMorph color: Color green].
To create more columns use #addColumn: method:
	(aNavigationView addColumn: #package) 
		width: 50;
		displayItemPropertyBy: [:methodItem | self packageNameOf: methodItem]

To show items user should set up instance of ClyDataSource for me:
	aNavigationView	dataSource: aDataSource

When user selects any table view I trigger navigation request which ask browser for desired action. To set up navigation selector use:
	aNavigationView requestNavigationBy: #showMethodsForSelectedClasses

I maintain selection objects to always show correct table selection after any tree expansion, items addition of removal.
Main selection is what user selects on table. I manage it in variable selection, instance of ClyDataSourceSeleciton.
Next is desiredSelection, instance of ClyDesiredSelection. Every time user set me new data source I am trying to restore desired selection. Idea to show previously selected items on new data source. I try to find same items and if they not exists I lookup similar items by name.
I modify desiredSelection object only when user manually modifies table selection.
And last type of selection is highlighting, instance of ClyHighlightingSelection. User can set it by:
	aNavigationView highlightItemsWhich: predicateBlock.
Logic to fix selections during any change is implemented in method #updateSelectedItemsOf: aDataSource.

By default user can type characters on table to search required items. But also explicit filter with extra field can be added: 
- enableFilter.  It adds simple ClyItemNameSubstringFilter.
- enableFilter: anItemStringFilterClass.

I use Commander library to implement:
- context menu using CmdContextMenuCommandActivator:
	- buildContextMenuFor: aSelection
- shortcuts using CmdShortcutCommandActivator 
	- kmDispatcher
-  drag and drop using CmdDragAndDropCommandActivator 
	- createDragPassengerFor: aSelection
To use Commander I ask browser for command context of given selection.
Same context I use decorate table cells with appropriate decorators:
	- decorateTableCell: anItemCellMorph of: aDataSourceItem
There is special decorator which also based on Commander: ClyTableIconCommandActivator. It adds iconic button to table cells for all interested commands.
It brings behaviour of Nautilus method widget where table icons are extended by AbstractMethodIconAction. Here commands should be marked with ClyTableIconCommandActivator.

I provide extra suitable events which in future should be also based on commands:
- whenDoubleClickDo: 
- whenEnterKeyPressedDo: 
- whenEscapeKeyPressedDo: 
ClyBrowserSearchDialog uses them to provide user friendly behaviour.

Other suitable methods:
- ignoreNavigationDuring: aBlock. It allows to modify my selection without triggering navigation  request to browser.
- findItemsSameAsFilter. It allows to use full filter string to search my data source for item with exacly same name. It is used by ClyBrowserSearchDialog.
- allowsDeselection: aBoolean.

Internal Representation and Key Implementation Points.

    Instance Variables
	table:		<FTTableMorph>
	browser:		<ClyBrowser>
	navigationSelector:		<aSymbol>
	selection:		<ClyDataSourceSelection>
	desiredSelection:		<ClyDesiredSelection>
	highlighting:		<ClyHighlightingSelection>	
	changesWasInitiatedByUser:		<Boolean>
