I am abstract query of all classes from given scope.
Subclasses should define concrete condition which all retrieved classes should satisfy: 
- selectsClass: aClass 

Scope should support #classesDo: which I use to collect and filter all available classes.

I provide several convenient methods to instantiate queries with hierarchical result:

	ClyAllClasses hierarchical
	ClyAllClasses hierarchicalFrom: aScope
	
In that cases instances will be created with ClyHierarchicallySortedClasses required result