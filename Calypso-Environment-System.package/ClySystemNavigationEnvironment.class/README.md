I am environment where user navigates over system which is by itself represented by ClySystemEnvironment.
You can create me by:
	
	ClySystemNavigationEnvironment over: aSystemEnvironment
	
I have class side variable #currentImage which represents navigation over current image.
	
	ClySystemNavigationEnvironment currentImage.

I provide most global scope for queries: systemScope. It is scope of my systemEnvironment with which I was created. You can ask me for systemScope and query any content from it: 

	scope := ClySystemNavigationEnvironment currentImage systemScope.
	scope query: ClySortedPackages.
	
If you want to play with current image scope there is suitable method: 

	scope := ClySystemNavigationEnvironment currentImageScope.
	scope query: ClySortedPackages.

There are other suitable methods to query current image:

	ClySystemNavigationEnvironment queryCurrentImageFor: ClySortedPackages.

I always include ClySystemEnvironmentPlugin. It fills items with standart set of properties related to language metamodel.

I could be attached to my system environment to react on system changes. I could be subscribed on any change and fix all cached scopes according to given modification.
By default I am not attached to system. So by default I am in kind of read only mode. To attach me to system use: 
	
		env attachToSystem.		
		env detachFromSystem
		
My #currentImage singleton is attached to system by default and react on any system change. So current image caches are always in valid state after any system change.

For more details look at my superclass comment.
 
Internal Representation and Key Implementation Points.

    Instance Variables 
	systemEnvironment:		<ClySystemEnvironment>