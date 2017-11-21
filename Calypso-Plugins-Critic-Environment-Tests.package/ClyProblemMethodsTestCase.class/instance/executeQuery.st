running
executeQuery
	"for tests we execute query and wait when critiques will be built.
	the second time (called from super) result will be ready"
	query execute.
	self waitAnalysisComplete.
	
	super executeQuery.