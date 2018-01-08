testing
affectsMethodsTaggedWith: tagName

	overriddenSuperclass withAllSubclassesDo: [:each | 
		(each tagsForMethods includes: tagName) ifTrue: [ ^true ] ].

	^false