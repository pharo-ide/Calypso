running
setUp
	super setUp.
	groupProvider := self groupProviderClass new.
	builtGroups := OrderedCollection new.