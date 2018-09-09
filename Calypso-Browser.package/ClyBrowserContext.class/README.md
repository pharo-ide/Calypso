My subclasses represent the navigation context of the browser, the browser state. They describe the concrete type of selected items together with items itself.

My tool is always the browser. And I provide the #browser method to use this fact explicitly.

I provide implementation of general logic how to work with selected items in the Calypso browser model:
- selectedItems, returns the actually selected items.
- selectedObjects , returns the actual object of selected items.
- lastSelectedItem
- lastSelectedObject
- lastSelectedObjectIn: items, it incapsolates the knowledge about what is the last item in selection.
- firstSelectedObjectIn: items
- hasSelecteditems

Users can retrieve actual system which browser navigate:
	context system

There are several operation with browser which can be performed using me:
- updateBrowser, it will force the browser to perform full update of navigation data sources
- restoreBrowserState, it should be implemented by subclasses whey they should recover browser state which is described by context instance