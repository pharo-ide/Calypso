I am a query browser.
I show in one table result of any system query.

To show query use following method: 

	ClyQueryBrowser openOn: (ClyMessageSenders of: #do:)

I implement more simple API on class side: 

	ClyQueryBrowser browseSendersOf: #do:.
	ClyQueryBrowser browseImplementorsOf: #do:.
	ClyQueryBrowser browseMethods: {Point>>#x. Point>>#y}.

Last method is suitable to show given list of methods. But normally users should use first class queries.

I provide scoping mechanizm: user can filter query result using scopes from the compobox in toolbar.

When I spawned from the browser I receive all its navigation scopes.
For full browser I receive current selection package and class scopes.
For query browser I inherit all scopes which it has.
Also I add extra scopes to my scope list which is based on my current selection.
For example selected method will bring extra class and package scopes of this method.  

Internal Representation and Key Implementation Points.

    Instance Variables
	activeScope:		<ClyScope>
	queryScopes:		<OrderedCollection of<ClyScope>>
	resultView:		<ClyQueryView>
	systemQuery:		<ClyQuery>