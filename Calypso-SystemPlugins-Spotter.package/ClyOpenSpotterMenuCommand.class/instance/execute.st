execution
execute
	GTSpotterMorph new
		extent: (World width / 2.4 @ (World height / 1.6)) asIntegerPoint;
		doLayout;
		spotterModel: (GTSpotter on: (ClySpotterModel on: browser));
		openCenteredInWorld	