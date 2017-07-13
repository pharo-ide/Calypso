helpers
prepareGroupForMethodsCollection
	"because all methods are from class side we should add it to group 
	because it checkes method origin".
	group classes: group classes, {ClyAnalyzedClassStub classSide}.
	
	