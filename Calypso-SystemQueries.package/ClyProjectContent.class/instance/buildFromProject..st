building
buildFromProject: aProject 
		
	self collectPackagesFrom: aProject.
	self collectGroupsFrom: aProject.	