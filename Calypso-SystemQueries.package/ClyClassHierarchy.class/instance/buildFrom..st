building
buildFrom: classes
	| mapClass map |
	mapClass := inverse ifTrue: [ ClyInverseClassHierarchyMap ] ifFalse: [ ClyClassHierarchyMap ].
	map := mapClass for: self of: classes.
	map build.
	^map