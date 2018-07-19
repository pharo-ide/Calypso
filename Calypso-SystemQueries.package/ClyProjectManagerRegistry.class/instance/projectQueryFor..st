queries
projectQueryFor: aScope

	^ (projectManagers collect: [ :found | found queryClass sortedFrom: aScope ])
		reduce: [ :a :b | a , b ]