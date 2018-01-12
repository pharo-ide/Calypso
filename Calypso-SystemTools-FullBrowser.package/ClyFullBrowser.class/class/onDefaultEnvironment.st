opening
onDefaultEnvironment
	<script>
	^ (self on: ClyNavigationEnvironment currentImage)
			prepareInitialState;
			yourself