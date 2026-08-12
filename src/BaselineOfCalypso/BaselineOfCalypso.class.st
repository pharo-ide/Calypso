Class {
	#name : 'BaselineOfCalypso',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCalypso',
	#package : 'BaselineOfCalypso'
}

{ #category : 'baselines' }
BaselineOfCalypso >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec
				package: 'Calypso-ProcessQueries';
				package: 'Calypso-ProcessQueries-Tests'
				with: [ spec requires: #( 'Calypso-ProcessQueries' ) ];
				package: 'Calypso-SystemTools-Debugger'
				with: [ spec requires: #( 'Calypso-ProcessQueries' ) ];
				package: 'Calypso-SystemTools-ProcessBrowser' with: [
						spec requires:
								#( 'Calypso-ProcessQueries' 'Calypso-SystemTools-Debugger' ) ];
				package: 'Calypso-SpecBrowser';
				package: 'Calypso-SystemPlugins-Spotter'.

			spec
				group: 'ProcessEnvironment' with: #( 'Calypso-ProcessQueries' );
				group: 'ProcessBrowser'
				with: #( 'Calypso-SystemTools-ProcessBrowser' );
				group: 'ProcessBrowserTests'
				with: #( 'Calypso-ProcessQueries-Tests' );
				group: 'Extras'
				with: #( 'Calypso-SpecBrowser' 'Calypso-SystemPlugins-Spotter' );
				group: 'default'
				with:
					#( 'ProcessEnvironment' 'ProcessBrowser' 'ProcessBrowserTests' ) ]
]
