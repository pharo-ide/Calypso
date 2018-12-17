"
See comment of my collate:with: method
"
Class {
	#name : #ClySortMethodByPackageFunction,
	#superclass : #ClySortFunction,
	#category : #'Calypso-SystemQueries-Queries'
}

{ #category : #evaluating }
ClySortMethodByPackageFunction >> collate: aMethod1 with: aMethod2 [
	"Returns:
		-1 if aMethod1 is 'lower than' aMethod2
		0 if aMethod1 is 'equal to' aMethod2
		1 if aMethod1 is 'greater than' aMethod2
		
	aMethod1 is considered 'lower than' aMethod2 if:
		the name of aMethod1's package is lower than aMethod2's 
		or if the package names are the same and the name of aMethod1's class is lower than aMethod2's
		or if the package names and the class names are the same, and aMethod1's name is lower than aMethod2's name"
	| lowerThan |
	lowerThan := [ :meth1 :meth2 |
		(meth1 package name < meth2 package name) or: [ 
			(meth1 package name = meth2 package name) and: [ 
				(meth1 origin name < meth2 origin name) or: [ 
					(meth1 origin name = meth2 origin name) and: [ 
						meth1 name < meth2 name
		]]]]
	 ].
	^ (lowerThan value: aMethod1 value: aMethod2)
		ifTrue: [ -1 ]
		ifFalse: [ 
			(lowerThan value: aMethod2 value: aMethod1)
				ifTrue: [ 1 ]
				ifFalse: [ 0 ]	
		]
]
