I implement sorting of ClyBrowserItem instances by their actual objects.
And to sort actual objects I include another sort function in the variable actualObjectSortFunction.

To create my instances use following script:

	ClySortBrowserItemFunction with: actualObjectSortFunction
	
Or simply convert any sort function using: 

	aSortFuntion forBrowserItems	
		 
Internal Representation and Key Implementation Points.

    Instance Variables
	actualObjectSortFunction:		<SortFunction>