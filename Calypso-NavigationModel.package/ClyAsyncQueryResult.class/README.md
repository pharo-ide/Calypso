I am special kind of query result which implements building in background process.

I override #rebuild method where I fork actual query execution and mark myself with ClyBackgroundProcessingTag.
When actual query is done I notify my observers to perform update.

I am created by ClyAsyncQuery as actual result instance instead of requiredResult. My #buildingQuery is actual query which I execute in the background.

Besides background processing I have other differences to my superclass logic:
- metadata is not lazy and it is built in background together with items
- built tems are never reset due to system changes. They are replaced with actual result when it is finally built.

I override #isBuilt method to detect that background processing completes and items are really built.
So you can check that async query is done using following expression: 
	asyncQuery execute isBuilt 
 
I keep reference to actual result in my #actualResult instance. So it is keep in memory as soon as I am used by somebody.

To force async query execution you need convert given query using: 
	aQuery async
	
It returns ClyAsyncQuery instance with #asyncResult variable which points to me.

I use specific logic to adopt my instances for the browser. Look at #adoptForBrowser. 
When I represent raw query result then my superclass implementation is fine. The instance of ClyQueryResultBrowserAdapter will be returned which wraps raw query items to ClyBrowserItem instances.
But If I represent a kind of ClyBrowserQueryResult then it is already adopted for the browser. But from the other side I do not provide required API of ClyBrowserQueryResult. So in that case I will return ClyAsyncBrowserQueryResultAdapter which adopts my instance to the ClyBrowserQueryResult.

Internal Representation and Key Implementation Points.

    Instance Variables
	actualResult:		<ClyQueryResult>
	buildProcess:		<Process>