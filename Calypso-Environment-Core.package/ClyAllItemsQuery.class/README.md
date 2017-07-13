I represent a query which retrieves all available items from given scope which are related to requested content.
For example if you query me for sorted methods from particilar class I will return all methods of this class. If you query me for sorted classes of particular package I will return all classes from this package.
I am dummy query which not apply any special logic to retrieve result. I just return every available item.

You can create me using superclass message: 
	ClyAllItemsQuery requestedContent: anEnvironmentContentClass
But usually you do not need it because content class can be used directly in place of me:
	classesScope query: ClySortedMethods
ClyEnvironmentContent class defines convertion method #asEnvironmentQuery which converts it to my instance. So content classes are query-compatible and can be used instead of me.

To fetch result I dispatch processing to given scope:
	
	ClyAllItemsQuery>>fetchContent: anEnvironmentContent from: anEnvironmentScope
		anEnvironmentScope fetchContent: anEnvironmentContent by: self

Then concrete scope ask me to fetch content from concrete set of objects: 
	- fetchContent: anEnvironmentContent fromPackages: packages
	- fetchContent: anEnvironmentContent fromClasses: classes
	- look at execution protocol for more
	
And finally all these methods ask given content to build itself from given set of concrete objects:
	- anEnvironmentContent buildFromPackages: packages
	- anEnvironmentContent buildFromClasses: classes 
	- and etc.
	
These building methods are first thing which needs to be implemented when you want new kind of environment content. Then you are immediatelly able to query them from supported scopes. Look at ClyEnvironmentContent comments for details