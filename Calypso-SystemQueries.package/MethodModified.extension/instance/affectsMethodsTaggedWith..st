*Calypso-SystemQueries
affectsMethodsTaggedWith: tagName
	^(super affectsMethodsTaggedWith: tagName) or: [ oldProtocol = tagName ]