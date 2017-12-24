selection changes
classSelectionChanged
	
	| actualMetaLevel |
	self showsFlatClasses ifFalse: [ 
		self silentlySelectPackageOfSelectedClass].
	
	self changeMethodGroupQueryBy: [ 
		methodGroupQuery := methodGroupQuery withScopeOf: self classSelection actualObjects.
		actualMetaLevel := self selectedClassMetaLevelScope.
		actualMetaLevel = metaLevelScope 
			ifTrue: [ methodGroupQuery ]
			ifFalse: [ 
				metaLevelScope := actualMetaLevel.
				methodGroupQuery withMetaLevelScope: metaLevelScope]]