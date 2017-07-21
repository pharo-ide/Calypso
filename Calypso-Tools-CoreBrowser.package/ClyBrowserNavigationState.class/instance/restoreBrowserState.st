private
restoreBrowserState

	plugins do: [:each | self browser addPlugin: each copy ].
	
	self browser navigationEnvironment: navigationEnvironment