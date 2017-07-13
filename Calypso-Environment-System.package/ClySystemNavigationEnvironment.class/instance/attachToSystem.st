system subscription
attachToSystem
	systemEnvironment subscribe: self.
	plugins do: [:each | each attachToSystem]