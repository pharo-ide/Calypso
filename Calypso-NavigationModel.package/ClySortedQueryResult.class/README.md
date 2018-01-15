I represent sorted query result.
I simply apply my #sortFunction for given result items.  

To create my instance use #using: method:

	ClySortedQueryResult using: ClySortByNameFunction ascend.
	
My #sortFunction can be a kind of SortFunction or ClySortFunction. 
First is valid to use in Pharo 7 because it was refactored to be safelly use in caches. SortFunction in old Pharo's do not define equality and hash. So Calypso uses its own ClySortFunction implementation in existing code.

Notice, the query result is cached as part of query requiredResult. It adds strong requirement to the values of my sortFunction variable: it should be safe for caches. This condition forbids using blocks in parameters.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	sortFunction:		<ClySortFunction>