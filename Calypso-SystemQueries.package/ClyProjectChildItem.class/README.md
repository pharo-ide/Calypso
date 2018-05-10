I represent the item of project.
Concrete project manager plugins are supposed to implement my subclasses to represent concrete types of project items.

Subclasses should implement following methods:
- items
- allPackages
- classes
- isEmpty

Instancees should be creation with project: 

	ClyProjectChildItem project: aProject
	 
Internal Representation and Key Implementation Points.

    Instance Variables
	project:		<ClyManagedProject>