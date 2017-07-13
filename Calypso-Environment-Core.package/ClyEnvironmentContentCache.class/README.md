I represent content item cache. I have start position of loaded items and total content size. 

My instances could be created using:

	ClyEnvironmentContentCache initialFor: anEnvironmentContent size: cacheSize.
	ClyEnvironmentContentCache filledBy: anEnvironmentContent startingAt: startPosition size: cacheSize

I am used by ClyEnvironmentCursor to cache observed items. It uses first instantiation method to perform initialization. It not loads any items from content. Items are loaded explicitly by one of my methods: 
	- loadItemOf: anEnvironmentContent at: position. It checks if given position is already cached and if it is not then It loads new portion of items starting from requested position.
	- loadItemsOf: anEnvironmentContent startingWhere: conditionBlock. It asks given content to load new portion of items starting at position where conditionBlock is true. At the end method will return true if such item is found and false otherwise. If nothing found current cached items wil be not changed.
	
Second method is used when cursor performs full items update. In that case content itself is asked to create full update object which includes  new cache. It is important for remote scenario because in that case content is remote object and in one request it will return complete cache object including total content size, starting position and updated items.
I am supposed to be used by loading new items into cache from different positions. If original content is changed completally new cache instance should be requested from him. For example if user removes method from class it wil change total size of sorted methods content. In that case all observing cursors should request updated information

	update := cache createFullUpdateOf: anEnvironmentContent.
	updatedCache := update itemCache

It will return new instance of cache with updated items and total content size. In remote scenario it will return all information in one request.
	
I provide few method to simplify access to my cached items: 
	- itemAt: globalPosition. It returns cached item at position from source content point of view. To access right element method computes local cache position. If cache has no item at given position error will be signalled
	- findItemsWith: actualObjects forAbsentDo: absentBlock. it returns items which represent actualObjects. If there is no item for some of given objects method uses absentBlock result
	- findItemWhich: blockCondition ifExists: presentBlock
	
My cached items are always resolved which means that all properties are precomputed and ready to use. It is logic of environment content which allows to resolve only cached items which are usually only visible ones. I only play role of suitable  container for them.

Internal Representation and Key Implementation Points.

    Instance Variables
	items:		<SequenceableCollection of<ClyEnvironmentItem>>
	sizeLimit:		<Integer>
	startPosition:		<Integer>
	totalContentSize:		<Integer>