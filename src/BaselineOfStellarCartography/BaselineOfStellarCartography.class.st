Class {
	#name : #BaselineOfStellarCartography,
	#superclass : #BaselineOf,
	#category : #BaselineOfStellarCartography
}

{ #category : #baselines }
BaselineOfStellarCartography >> baseline: spec [
	"baseline"

	<baseline>
	spec for: #common do: [ "Packages" spec package: 'Stellar-Cartography' ]
]
