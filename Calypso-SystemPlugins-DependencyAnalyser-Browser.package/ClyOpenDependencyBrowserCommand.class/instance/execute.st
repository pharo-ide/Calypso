execution
execute

	| packageNames |
	packageNames := packages collect: [ :each | each name ].
	
	(DAPackageAnalyzerPackageDependenciesWindow onPackagesNamed: packageNames) open 