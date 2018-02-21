I represent query result using fast table.
I should be created for browser:

	ClyQueryView for: aBrowser

or using helper browser method:

	aBrowser newNavigationView.

By default I initialize table with single column, the instance of ClyMainTableColumn. You can ask it to set up specific column properties

	aQueryView mainColumn 
		width: 100;
		displayItemPropertyBy: [:rowItem | rowItem name, 'special name suffix for test' ].

Or you can set up display block using:

	aQueryView displayMainColumnBy: [ :cell :item | 
		cell nameMorph contents: item name.
		cell nameMorph color: Color green].

To create more columns use #addColumn: method:

	(aQueryView addColumn: #package) 
		width: 50;
		displayItemPropertyBy: [:methodItem | self packageNameOf: methodItem]

To show items user should pass query instance into me:

	aQueryView showQuery: aQuery

When user selects any item in table I trigger navigation request which ask browser for desired action. To set up navigation selector use:

	aQueryView requestNavigationBy: #showMethodsForSelectedClasses

I maintain several selection objects to always show correct table selection after any tree expansion, items addition of removal.

Main selection is what user selects on table. I manage it in #selection variable, instance of ClyDataSourceSeleciton.

Next is desiredSelection, instance of ClyDesiredSelection. Every time user passes me new query I am trying to restore desired selection on new items. Idea is to show previously selected items on new data source. I try to find same items and if they not exists I lookup similar items by name.
I set new desiredSelection instance only when user manually modifies table selection.

And last type of selection is highlighting, instance of ClyHighlightingSelection. User can set it by:

	aQueryView highlightItemsWhich: predicateBlock.

All type of selections maintain correct state to be in sync with actual table seletion indexes after any data source changes. This logic implemented in method #updateSelectedItemsOf:.

By default user can type characters on table to search required items. But also explicit filter with extra field can be added: 

- enableFilter
It adds simple ClyItemNameFilter.

- enableFilter: anItemStringFilterClass

I use Commander library to implement:

- context menu using CmdContextMenuCommandActivator:

	- menuColumn: column row: rowIndex

- shortcuts using CmdShortcutCommandActivator 

	- kmDispatcher

-  drag and drop using CmdDragAndDropCommandActivator 

	- createDragPassengerFor: aSelection

To use Commander I ask browser for command context of given selection.
The context is also used to decorate table cells with appropriate decorators:

	- decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	- decorateTableCell: anItemCellMorph of: aDataSourceItem

There is special decorator which also based on Commander: ClyTableIconCommandActivation. It adds iconic button to table cells for all interested commands.
It brings behaviour of Nautilus method widget where table icons are extended by AbstractMethodIconAction. Here commands should be marked with ClyTableIconCommandActivation.

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
	shouldRestoreSelection: <Boolean>
	treeStructure: <Array of<Association>>