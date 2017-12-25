selection changes
classSelectionChanged
	
	| actualMetaLevel |
	self showsFlatClasses ifFalse: [ 
		self silentlySelectPackageOfSelectedClass].
	
	self changeMethodGroupQueryBy: [ 
		methodGroupQuery := methodGroupQuery withScopeOf: self classSelection actualObjects.
		actualMetaLevel := self selectedClassDefaultMetaLevelScope.
		actualMetaLevel = metaLevelScope 
			ifTrue: [ methodGroupQuery ]
			ifFalse: [ 
				metaLevelScope := actualMetaLevel.
				methodGroupQuery withMetaLevelScope: metaLevelScope]]