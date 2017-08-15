building
buildFromSystems: systemEnvironments
	systemEnvironments do: [ :eachSystem |
		self buildFromProcesses: eachSystem allProcesses
	]