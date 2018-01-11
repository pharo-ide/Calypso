opening
onDefaultEnvironment
	<script>
	^ (self on: ClyNavigationEnvironment currentImage)
			prepareCleanInitialStateWithoutFilter;
			yourself