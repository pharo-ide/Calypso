controlling
processQueue

	[
		updateQueue next in: [:next | 
			UIManager default defer: [next runUpdate] ]
	] repeat