tools registration
beAllDefault
	<script>
	self subclasses select: [ :each | each canBeDefault  ] thenDo: [ :each | each beDefaultBrowser ]