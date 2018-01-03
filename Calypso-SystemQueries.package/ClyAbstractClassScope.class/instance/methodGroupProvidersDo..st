private
methodGroupProvidersDo: aBlock
	| providers |

	environment pluginsDo: [ :plugin | 
		providers := plugin collectMethodGroupProviders.
		providers do: aBlock ]