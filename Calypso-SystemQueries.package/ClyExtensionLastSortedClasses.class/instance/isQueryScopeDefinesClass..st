building
isQueryScopeDefinesClass: aClass

	| classPackage |
	classPackage := aClass package.
	buildingQuery scope packagesDo: [ :each | 
		(each isAboutPackage: classPackage) ifTrue: [ ^true ]].
	^false