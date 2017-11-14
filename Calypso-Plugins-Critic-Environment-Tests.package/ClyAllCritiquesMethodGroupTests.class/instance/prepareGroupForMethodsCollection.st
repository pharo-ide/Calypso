helpers
prepareGroupForMethodsCollection
	"because all methods are from class side we should add it to group 
	because it checkes method origin".
	group classScope: group classes, {ClyAnalyzedClassStub classSide}.
	
	