execution
execute
	
	sourceNode nodesWithLinks do: [:each | 
		Breakpoint removeFrom: each]