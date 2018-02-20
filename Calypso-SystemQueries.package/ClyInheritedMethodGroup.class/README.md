I am group of inherited methods. 
Depending on my query I include methods from on or all traits and superclasses which are inherited by given classes.

I can be expanded by subgroups of each inherited class. It will be also my instances but they will be configured by single class scope method query.

In the browser I provide few checkboxes to switch method visibility. It is based on my visibilityLevels, collection of ClyMethodVisibilityLevel instances.
They are extended by plugins. For example Traits plugin adds local trait visibility level. 


Internal Representation and Key Implementation Points.

    Instance Variables
	visibilityLevels:		<Collection of<ClyMethodVisibilityLevel>>
