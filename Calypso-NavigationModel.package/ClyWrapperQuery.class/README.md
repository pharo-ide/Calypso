I represent hierarchy of wrapper queries.
The wrapper query is a single item composite query which uses single subquery in own execution logic.

To create my instances use #for: message: 
	
	ClyWrapperQuery for: aQuery

Subclasses can use #actualQuery to access single subquery for convenience.

I redefine #description to look like subquery by default.