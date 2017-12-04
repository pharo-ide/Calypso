accessing
classesRelatedTo: aClass do: aBlock
	relationScopeClasses do: [ :each | 
		each classesRelatedTo: aClass do: aBlock ]