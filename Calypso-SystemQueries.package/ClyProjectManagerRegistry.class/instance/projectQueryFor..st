queries
projectQueryFor: aScope

	projectManagers isEmpty ifTrue: [ ^ ClyUnknownQuery instance ].

	^ (projectManagers collect: [ :found | found queryClass sortedFrom: aScope ])
		reduce: [ :a :b | a , b ]