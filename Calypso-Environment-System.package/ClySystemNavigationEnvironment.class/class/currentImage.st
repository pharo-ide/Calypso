current image
currentImage
	^currentImage ifNil: [ 
		currentImage := (self over: ClySystemEnvironment currentImage)
			setUpAvailablePlugins;
			attachToSystem]