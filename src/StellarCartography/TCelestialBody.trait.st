Trait {
	#name : #TCelestialBody,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
TCelestialBody >> orbitalPeriod [

	"computes the orbital period of a body orbiting its primary, by invoking the semimajor axis & mass of the primary body"

	"scope: instance-variables"

	| a g m |
	a := self semimajorAxis.
	g := PhysicalConstant gravitational.
	m := self primary mass.
	^ ((a raisedTo: 3) / (g * m) raisedTo: 0.5) * 2 * Float pi
]
