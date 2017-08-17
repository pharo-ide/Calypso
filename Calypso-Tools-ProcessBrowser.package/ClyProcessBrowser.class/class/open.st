instance creation
open
	<script>
	| browser |
	browser := self new.
	browser showProcessesIn: ClySystemNavigationEnvironment currentImage.
	browser open.
	^browser