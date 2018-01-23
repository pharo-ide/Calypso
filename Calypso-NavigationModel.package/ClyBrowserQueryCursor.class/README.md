I organize stream access to environent content. 
I am returned from any enviroment query and users always work with result using me.
I cache part of content items and load more by demand. When user ask next item I check cache for it and if it is not in cache I load new part of items and use it as a new cache.
Loaded items are always resolved. Observed content compute item properties when they are requested by user. 

My cache is represented by class ClyEnvironmentCursorCache which maintain start position, cache size and total content size. 
When user ask me for items at given position which are not exist in cache I move cache to requested position which loads new portion of items. It not updates total content size.
When user ask me to update items I retrieve new updated cache from content. It returns new cache instance with updated items and total content size.

My instances are created by environment content:
	environmentContent newCursor

I supposed to work only with my creator content and never change it. If you need cursor over different content I provide suitable query interface for this which returns new cursor (read below).
So my content is never changed and I hold static metadata about it.
Metadata is represented by class ClyEnvironmentContentMetadata. It holds information about query which built it and in what scope.

All these logic around stream access with cache and metadata follow one important goal: provide optimized access to remote items which was build by query on remote environment.
With remote scenario cursor, cache and metadata will be transfered by value to client side. But observed content will be represented as proxy. 
Cache and metadata allow avoid communication with remote side because they include all required data to build tools to browse content items.
Communication will happen only when new portion of data will be needed or when new content will be requested by my query API. It means that only visible part of items will be loaded by tools and usually in one request.

To access items one by one use following methods:
	- currentItem 
	- moveTo: positionNumber
	- moveToStart
	- moveToItemWhich: conditionBlock
	- nextItem. It moves cursor to next position and returns new current item
	
To find group of items:
	- findItemsWhich: conditionBlock 
	- findItemsWith: actualObjects. it returnes environment items which represent actualObjects. Result will be in same order and with same size as given actualObjects array. If some object is absent in content then it will return nil in place of it. 
	- findItemsSimilarTo: sampleEnvironmentItems. There is criteria of similarity between two environment items. For example two items with same name are similar to each other. It is usefull for tools to restore selection when data source is changed.

Query interface allows execute new query on underlying environment with modified parameters of original query (or completely new one). For example:
	- query: anEnvironmentQueryOrContentClass. It evaluates new query in same scope of original query.
	- query: aQueryOrContentClass from: basisObjects. It evaluates new query in the scope of basis objects which are supposed to be in original content.
	- queryContentInScopeWith: extraBasisObject. It evaluates original query but in new scope which adds extra basis object to original objects.
	- look at queries protocol for more methods
	
There is also special query to filter items of observed content:
	- filterItemsBy: aClyItemFilter. It returnes new cursor observing new version of original content which items satisfied given filter. Filter here is represented by subclasses of ClyItemFilter. For example It can filter by substring matching item name.
	
There are also methods to retrieve all content items: 
	- retrieveAll. It returns all items of observed content. All items will be resolved as in other requests.
	- retrieveAllActualObjects. It returns all raw objects of observed content items. For example if can return all methods without wrapper items.

Observed content can notify subscribers about changes. I provide methods for this:
	- attachContentTo: anObject	
	- detachContentFrom: anObject 
	
When object is attached to environment content it will receive message #environmentChanged: when any change will happen with content.
  
Internal Representation and Key Implementation Points.

    Instance Variables
	cache:		<ClyEnvironmentCursorCache>
	metadata:		<ClyEnvironmentContentMetadata>
	observedContent:		<ClyEnvironmentContent>
	position:		<SmallInteger>