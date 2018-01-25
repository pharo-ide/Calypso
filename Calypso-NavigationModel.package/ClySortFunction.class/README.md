I implement first class function to be used instead of block in sorted collection.
There is system SortFunction. I am introduced to be safely used in caches.
Now in Pharo 7 SortFunction is improved and can completally replace and can be used instead of me.
But for Pharo 6 compatibility am still here and use by other Calypso based packages.

So for general overview read system SortFunction comments.

Internal Representation and Key Implementation Points.

    Instance Variables
	direction:		<Integer>