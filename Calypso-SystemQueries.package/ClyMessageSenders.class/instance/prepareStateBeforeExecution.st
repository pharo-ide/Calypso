execution
prepareStateBeforeExecution
	super prepareStateBeforeExecution.
	
	"Special selector indexes are required for lookup in method.
	Here it is collected in advance to be used during execution
	because after execution query become readonly object"
	self specialSelectorIndexes