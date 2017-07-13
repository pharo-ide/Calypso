I am a builder of hierarchical view of all inherited traits for inherited method subgroups.
I arrange trait items in following order: 
	- first trait 
	- first trait traits 
	- ...
	- second trait 
	- second trait traits
	- ...

I am used by ClyInheritedMethodGroupSuperclassHierarchyBuilder to build separate hierarchy of traits for each class. Then my result is added to global hierachical view