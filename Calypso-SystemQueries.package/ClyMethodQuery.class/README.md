I am a root of hierarchy of queries which retrieve methods from environment. My requestedContent is supposed to be one of subclasses of ClyMethodContent. By default it is ClySortedMethods.

I fetch methods from environment by same logic as ClyAllItemsQuery using double dispatch: 
	
	ClyMethodQuery>>fetchContent: anEnvironmentContent from: anEnvironmentScope
		anEnvironmentScope fetchContent: anEnvironmentContent by: self

Then concrete scope ask me to fetch methods from concrete set of objects: 
	- fetchContent: anEnvironmentContent fromPackages: packages
	- fetchContent: anEnvironmentContent fromClasses: classes

And finally I retrieve all methods from given concrete objects and ask content to build itself from filtered methods.
My subclasses must implement filter by:
	- selectsMethod: aMethod

Also I define method to support method changes. I provide right way how to detect if my result is affected