accessing
currentImage
	^currentImage ifNil: [
		currentImage := self new
			name: 'current image';
			globals: Smalltalk globals;
			packageOrganizer: RPackageOrganizer default;
			changesAnnouncer: SystemAnnouncer uniqueInstance]