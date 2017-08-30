default
installNewPlugin: anEnvironmentPlugin

	defaultGlobalEnvironments do: [ :each | each addPlugin: anEnvironmentPlugin]