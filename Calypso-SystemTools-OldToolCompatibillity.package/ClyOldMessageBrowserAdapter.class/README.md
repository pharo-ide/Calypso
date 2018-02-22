I am a special adapter for the old message browser interface which users call using: 

	Smalltalk tools messageList 

The most of system queries are triggered by SystemNavigation which collects list of result methods and pass them to the registered message browser.
In contrast Calypso needs instance of query.

So to suppord old (current) approach I build special ClyOldMessageBrowserQuery on constant list of methods and then I open ClyQueryBrowser on it.
 
When Calypso is registered as default browser I am used as #messageList.
In future we should introduce #queryBrowser instead of it with direct usage of Calypso queries.

Internal Representation and Key Implementation Points.

    Instance Variables
	autoSelect:		<Boolean>
	messages:		<Collection of<CompiledMethod>>
	refreshingBlock:		<BlockClosure>
	title:		<String>