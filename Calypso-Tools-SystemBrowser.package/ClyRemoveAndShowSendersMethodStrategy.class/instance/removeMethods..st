execution
removeMethods: methods
	SycSilentlyRemoveMethodStrategy new removeMethods: methods.
	(ClyShowMessageSenderCommand forMethods: methods by: browser) execute