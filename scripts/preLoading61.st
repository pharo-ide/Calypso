"To avoid issue with no timestamp in method in pharo61 after loading tonel based project.
It breaks expectations of critique plugin tests"

(RBMethodHasNoTimeStampRule class >> #checksMethod) link:
	(MetaLink new
		metaObject: false;
		control: #instead)
