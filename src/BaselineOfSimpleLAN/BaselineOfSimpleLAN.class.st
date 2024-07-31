Class {
	#name : 'BaselineOfSimpleLAN',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSimpleLAN',
	#package : 'BaselineOfSimpleLAN'
}

{ #category : 'baselines' }
BaselineOfSimpleLAN >> baseline: spec [

	<baseline>
	spec for: #common do: [
		
		spec
			package: 'SimpleLAN'.
		spec
			group: 'Core'
				with: #( 'SimpleLAN' );
			group: 'default'
			with:
				#( 'SimpleLAN' ) ]
]
