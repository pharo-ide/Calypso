merging queries
mergeOwnInstances: queries
	"Subclasses should return collection of queries merged from given array.
	For example two AllClasses queries from same package scope can be merged.
	They can be represented by single AllClasses query 
	from unified scope of both packages from original queries"
	self subclassResponsibility