building
fillWith: classes
	| dynamicGroups fullClassScope groups |
	dynamicGroups := OrderedCollection new.
	fullClassScope := ClyClassScope ofAll: classes in: environment.
	
	self methodGroupProvidersDo: [ :groupProvider |
		groups := groupProvider buildGroupsFrom: fullClassScope.
		groupProvider isStatic
			ifTrue: [ items addAll: groups ]
			ifFalse: [ dynamicGroups addAll: groups ]].		
	self processDynamicGroups: dynamicGroups ofMethodsFrom: fullClassScope