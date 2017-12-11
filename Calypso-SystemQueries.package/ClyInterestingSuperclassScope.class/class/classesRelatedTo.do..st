accessing
classesRelatedTo: aClass do: aBlock
	| nextSuperclass |
	aClass isRootInEnvironment ifTrue: [ ^self ].
	
	nextSuperclass := aClass superclass.
	nextSuperclass = Object ifTrue: [ ^self ].
	
	aBlock value: nextSuperclass