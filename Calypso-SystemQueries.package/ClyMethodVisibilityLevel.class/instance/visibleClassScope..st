accessing
visibleClassScope: aClassScope
	"We should cut off any inherited scopes here.
	Visible class scope must be an instance of ClyClassScope"
	visibleClassScope := aClassScope asLocalClassScope