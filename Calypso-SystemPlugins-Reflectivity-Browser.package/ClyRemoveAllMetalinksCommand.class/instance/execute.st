execution
execute
	
	sourceNode nodesWithLinks do: [:each | 
		self class metalinkManagerClass removeFrom: each]