system subscription
attachToSystem
	system subscribe: self.
	plugins do: [:each | each attachToSystem]