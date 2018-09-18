execution
execute
	
	sourceNode nodesWithLinks do: [:each | 
		self metalinkManagerClass removeFrom: each]