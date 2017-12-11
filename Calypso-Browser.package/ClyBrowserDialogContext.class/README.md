I represent a context of specific dialog which can be opened from the specific browser.
For example there is ClyBrowserSearchDialog. It opens from the browser to allow user choose specific item from the given environment query.
I allow to bind special context implementation to this kind of dialog which can be different depending on the browser.
For example system browser require special ClySystemSearchDialogContext which implement system related context interface.

Following example shows how to use me to annotate specific kind of browser dialog context:
	ClySystemSearchDialogContext class>>selectionStrategy
		<classAnnotation>
		^ClyContextSelectionStrategy for: (ClyBrowserDialogContext of: ClyBrowserSearchDialog in: ClyFullBrowser)

Internal Representation and Key Implementation Points.

    Instance Variables
	browserClass:		<ClyBrowser class>
	dialogClass:		<Class>