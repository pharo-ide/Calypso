execution
fetchContent: aQueryResult fromClassGroups: groups
	"groups could be packages or class tags"	
	| definedClasses extendedClasses |
	definedClasses := groups	flatCollect: [ :each | each definedClasses] as: IdentitySet.
	self fetchContent: aQueryResult fromClasses: definedClasses.
	
	extendedClasses := groups flatCollect: [:each | each extendedClasses] as: IdentitySet.
	extendedClasses := extendedClasses copyWithoutAll: definedClasses.

	self fetchContent: aQueryResult fromClasses: extendedClasses