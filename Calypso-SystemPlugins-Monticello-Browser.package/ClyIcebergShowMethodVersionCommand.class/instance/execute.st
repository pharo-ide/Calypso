execution
execute
	| browserClass |
	browserClass := #IceTipExtendedVersionBrowser 
		asClassInEnvironment: self class environment
		ifAbsent: [ #IceExtendedVersionBrowser asClass ].
		
	(browserClass repository: repository method: method) open