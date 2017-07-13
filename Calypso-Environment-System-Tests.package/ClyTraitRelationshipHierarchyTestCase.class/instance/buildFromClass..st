helpers
buildFromClass: aClass
	| classScope |
	classScope := environment selectScope: self hierarchyScopeClass of: { aClass }.
		
	self retrieveContentFrom: classScope