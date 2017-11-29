running
executeQuery
	super executeQuery.
	foundSelectors := (resultItems collect: #selector) sorted asArray.