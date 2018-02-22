I implement navigation history.
I maintain two lists: 
- redoList 
- undoList 
They include collection of ClyBrowserState instances.

To record new state send following message: 

	navigationHistory recordState: aBrowserState 

And to undo changes call: 

	navigationHistory undoNavigationOf: aBrowser 
	
To redo them call: 

	navigationHistory redoNavigationOf: aBrowser
	
When you undo last browser state it adds new item to the redo list. And otherwise: when you perform redo it adds new item to the undo list.
This logic is implemented using undoExecuting and redoExecuting flags.

I allow to ignore navigation during given block: 

	navigationHistory ignoreNavigationDuring: aBlock	

During given block execution the #recordState: method do nothing. It resets flag #waitingNewState to achive this.

You can always check that history is empty: 

	navigationHistory isEmpty

Important detail:
I am implemented in the way to not keep reference to the browser and any of query results.
So long history do not prevent query results in environment cache to be garbage collected.
 	
Internal Representation and Key Implementation Points.

    Instance Variables
	redoExecuting:		<Boolean>
	redoList:		<OrderedCollection of<ClyBrowserState>>
	undoExecuting:		<Boolean>
	undoList:		<OrderedCollection of<ClyBrowserState>>
	waitingNewState:		<Boolean>