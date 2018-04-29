I implement sorting of different kind of system items like methods and classes.

First I check the type of given items using #calypsoEnvironmentType. If items are belongs to same type I use their #defaultSortFunctionForCalypso to sort them.
In addition I cache all created sort functions.

And when items are belongs to the different type I compare this types using #itemsSortOrderForCalypso number.
Look at #collate:with: method for details
 
Internal Representation and Key Implementation Points.

    Instance Variables
	functionsForTypes:		<Dictionary<Class, SortFunction>>