accessing
inheritedMethodsOf: aClass skipping: ignoreClassRoots
	| result |
	result := MethodDictionary new.
	(self shouldIgnore: aClass roots: ignoreClassRoots) ifTrue: [ ^result ].
	
	aClass allSuperclasses reverseDo: [:each | 
		(self shouldIgnore: each roots: ignoreClassRoots) ifFalse: [ 
			result addAll: each methodDict.
			ignoreClassRoots add: each]].

	aClass methodDict do: [ :each | 
		(aClass includesLocalSelector: each selector) 
			ifTrue: [ result removeKey: each selector ifAbsent: [  ] ]
			ifFalse: [result at: each selector put: each]].
	ignoreClassRoots add: aClass.
		
	^result