accessing
classesRelatedTo: aClass do: aBlock
	| objectClass |
	aClass isRootInEnvironment ifTrue: [ ^self ].
	
	objectClass := aClass environment classNamed: #Object.
	aClass = objectClass | (aClass superclass = objectClass) ifTrue: [ ^self ].
	
	aBlock value: aClass superclass