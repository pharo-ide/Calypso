navigation
selectClass: aClass
	| foundItems classDefinition |
	self changeNavigationStateBy: [ 
		self switchToMetaLevelScope: aClass metaLevelScope.	
		foundItems := classView findItemsWith: { aClass instanceSide }.
		foundItems ifNotEmpty: [ 
			"we want ensure that selected package is the package of found class.
			If it is not then we will select required package"
			classDefinition := foundItems anyOne getProperty: ClyClassDefinitionProperty.
			(self isPackageSelected: classDefinition definitionPackage) 
				ifTrue: [ ^self classSelection selectItems: foundItems ]].
		
		aClass tags 
			ifEmpty: [ self selectPackage: aClass package]
			ifNotEmpty: [:tags | self selectPackage: aClass package atClassTag: tags anyOne].
		self packageSelection isEmpty ifTrue: [ ^self ].
		self classSelection selectItemsWith: { aClass instanceSide }
	]