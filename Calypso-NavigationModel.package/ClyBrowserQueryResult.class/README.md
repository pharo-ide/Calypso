I am a root of hierarchy of query result classes which represent retrieved items as ClyBrowserItem instances.

My subclasses represent items in browser compatible form which includes information about:
- position inside internal result items
- depth inside internal result hierarchy  
- extendable properties of actual underlying items  

I lazely compute properties of items when they are requested by user. 
I just ask items to prepare themselves:
	item prepareIn: environment
And depending on actual item type the ClyBrowserItem delegates preparation to every plugin in the environment using appropriate method. For example:
	anEnvironmentPlugin decorateBrowserItem: aBrowserItem ofMethod: aBrowserItem actualObject
And plugin decorates given item with appropriate properties.

So I override all query methods to prepare found items. 
And in addition I implement new ones: 
- findItemsSimilatTo: otherBrowserItems 
It finds all items which are similar to given items collection. For comparison I use #isSimilarTo: method.
-findItemsWith: actualObjects 
It returnes items which represent actualObjects.	Result will be in same order as given actualObjects array. For the missing items there will be nil in the result array.

Also I implement rawItems methods by returning actual unwrapped objects