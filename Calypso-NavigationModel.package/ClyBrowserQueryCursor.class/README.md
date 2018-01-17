I organize stream access to query result represented with ClyBrowserItem instances.

I can be opened on any query result:
	aQueryResult openBrowserCursorFor: anObserver 
Or you can request me directly from query: 
	aQuery openBrowserCursorFor: anObserver 
It executes given aQuery and cursor is opened on the result like in first case.

The argument anObserver here is subscribed by result on changes. It is responsibility of anObserver to update its cache when it receives notification. Result sent #itemsChanged to it.
So I am passive object. Users should react on result changes and request me for update.
I can't be active and subscribe on result by myself because in remote scenario it would not work. I am supposed to be transfered by value to the client and it leads to such restrictions.

So I am always created with observer which is subscribed on result changes. When users do not need cursor anymore they should close it:
	aCursor close 
It will unsubscribe observer. I keep reference to it im my variable itemObserver.
The result of #close operation is ClyClosedBrowserCursor instance. So users can replace my instance with it to indicate closed state:
	cursor := cursor close.

I cache part of result items and load more by demand. When user ask next item I check cache for it and if it is not in cache I load new part of items and use it as a new cache.
Loaded items are always prepared. Observed query result computes properties of cached items when cache is created or updated. 

My cache is represented by instance of ClyBrowserQueryCache which maintains start position, cache size and cached items. 
When user asks me for items at given position which are not exist in cache I move cache to requested position which loads new portion of items.
When user asks me to update items I retrieve new updated cache from query result. It returns new cache instance with updated items, total result size and result metadata:
	aCursor updateItemCache

Together with item cache I keep total result size and result metadata.
Metadata is an instance of ClyQueryResultMetadata which represents information about result in general. Internally it is collection of properties collected by environment plugins from all result items. 
To access it use following methods:
- getMetaProperty: aPropertyClass
- hasMetaProperty: aPropertyClass
- metadata 

All logic around stream access with cache and metadata follows one important goal: provide optimized access to remote items which was build by query in remote environment.
In remote scenario cursor, cache and metadata is transfered by value to client side. But observed result is represented by proxy. 
Cache and metadata allow avoid communication with remote side because they include all required data to build tools to browse result items.
Communication will happen only when new portion of data is needed or when observed result is changed. For UI it means that only visible part of items is loaded by tools and usually in one request.

To access items one by one use following methods:
	- currentItem 
	- moveTo: positionNumber
	- moveToStart
	- moveToItemWhich: conditionBlock
	- nextItem. It moves cursor to next position and returns new current item
	
To find group of items:
	- findItemsWhich: conditionBlock 
	- findItemsWith: actualObjects. it returnes browser items which represent actualObjects. Result will be in same order and with same size as given actualObjects array. If some object is absent in result then it will be nil in place of it. 
	- findItemsSimilarTo: sampleBrowserItems. There is criteria of similarity between two browser items. For example two items with same name are similar to each other. It is usefull for tools to restore selection when data source is changed.
	
There are also methods to retrieve all result items: 
	- retrieveAll. It returns all items of observed result. All items will be prepared as in other requests.
  
Internal Representation and Key Implementation Points.

    Instance Variables
	cache:		<ClyBrowserQueryCache>
	metadata:		<ClyQueryResultMetadata>
	queryResult:		<ClyBrowserQueryResult>
	position:		<SmallInteger>
	itemCount: <Integer>
	itemObserver: <Object>