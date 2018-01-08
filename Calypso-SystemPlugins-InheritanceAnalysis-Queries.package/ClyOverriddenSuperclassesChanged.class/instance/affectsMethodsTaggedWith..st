testing
affectsMethodsTaggedWith: tagName

	overridingSubclass allSuperclassesDo: [:each | 
		(each tagsForMethods includes: tagName) ifTrue: [ ^true ] ].

	^false