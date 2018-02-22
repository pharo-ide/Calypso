I implement toobar in the browser (middle panel).
I collect all commands annotated by ClyToolbarCommandActivation strategy and ask them to build toolbar items.

This logic is implemented in method #updateItems. You can ask it anytime to update toolbar in the browser.
It is based on Commander menu:

	menu := CmdMenu activatedBy: ClyToolbarCommandActivation.

But in contrast to context menu all toolbar groups inline UI items into single toolbar panel.
So the menu groups in toolbar only allow to group several commands together to be close to each other. 

My instances are created on the browser: 

	ClyToolbar of: aBrowser
	 
Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>