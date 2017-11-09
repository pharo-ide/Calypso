building
isQueryScopeDefinesClass: aClass

	| classPackage |
	classPackage := aClass package.
	buildingQuery scope packagesDo: [ :each | 
		each = classPackage ifTrue: [ ^true ]].
	^false