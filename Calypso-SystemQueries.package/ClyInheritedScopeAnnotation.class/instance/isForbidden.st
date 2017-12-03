testing
isForbidden
	"Only kind of ClassHierarchyScope can represent inherited classes"
	
	^(annotatedClass includesBehavior: ClyClassHierarchyScope) not