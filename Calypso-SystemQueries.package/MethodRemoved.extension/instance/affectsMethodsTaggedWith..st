*Calypso-SystemQueries
affectsMethodsTaggedWith: tagName
	^(super affectsMethodsTaggedWith: tagName) or: [ protocol = tagName ]