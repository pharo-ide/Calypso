I am a root of hierarchy of method queries which uses set of selectors to filter methods.

My instances can be created using few methods:
	ClyMessageBasedQuery of: #(selector1 selector2) 
	ClyMessageBasedQuery of: #(selector1 selector2) as: ClyHierarchicallySortedMethods 

I provide suitable printing methods and correct comparison implementation.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	selectors:		<Array of<Symbol>>