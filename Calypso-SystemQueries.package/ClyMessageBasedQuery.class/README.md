I am a root of hierarchy of method queries which uses set of selectors to filter methods.

My instances can be created using following methods:

	ClyMessageSenders of: #selector.
	ClyMessageImplementors of: #selector from: aScope.
	ClyMessageSenders ofAny: #(selector1 selector2).
	ClyMessageImplementors ofAny: #(selector1 selector2) from: aScope.

I provide suitable printing methods and correct comparison implementation.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	selectors:		<Array of<Symbol>>