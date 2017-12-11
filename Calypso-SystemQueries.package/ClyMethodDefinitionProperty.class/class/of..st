instance creation
of: aMethod
	| methodPackage methodClass |
	methodPackage := aMethod package.
	methodClass := aMethod origin.
	methodPackage ifNil: [ methodPackage := methodClass package ]. "it happens when creation new method in trait. It should be fixed in system"
	
	^self package: methodPackage class: methodClass 