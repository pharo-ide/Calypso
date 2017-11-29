operations
importClass: aClass
	| newPackages |
	super importClass: aClass.
	newPackages := OrderedCollection new.
	classQuery scope packagesDo: [ :each | 
		each = aClass package ifFalse: [ newPackages add: each ]].
	newPackages size > 1 ifTrue: [ ^self error: 'You should select single package for import!' ].
	
	newPackages ifNotEmpty: [ ^newPackages first addClass: aClass ].
	aClass tags do: [:eachTag | aClass untagFrom: eachTag ]