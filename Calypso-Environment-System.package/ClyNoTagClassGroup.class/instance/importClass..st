operations
importClass: aClass
	super importClass: aClass.
	
	package = aClass package 
		ifTrue: [ aClass tags do: [:eachTag | aClass untagFrom: eachTag ]]
		ifFalse: [ package addClass: aClass ]