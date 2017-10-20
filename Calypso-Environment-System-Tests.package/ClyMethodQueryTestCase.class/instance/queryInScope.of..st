running
queryInScope: aScope of: basisObjects
	super queryInScope: aScope of: basisObjects.
	foundSelectors := (resultItems collect: #selector) sorted asArray.