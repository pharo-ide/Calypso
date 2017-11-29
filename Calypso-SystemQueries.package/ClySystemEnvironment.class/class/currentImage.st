accessing
currentImage
	^currentImage ifNil: [
		currentImage := self new
			name: 'Current image';
			globals: Smalltalk globals;
			packageOrganizer: RPackageOrganizer default;
			changesAnnouncer: SystemAnnouncer uniqueInstance]