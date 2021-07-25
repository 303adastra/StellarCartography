Class {
	#name : #EarthTests,
	#superclass : #TestCase,
	#category : #'StellarCartography-Tests'
}

{ #category : #tests }
EarthTests >> testEarthOrbitalPeriod [

	self
		assert: (Earth new orbitalPeriod asDays round: 1)
		equals: (365.26 days asDays round: 1)
]

{ #category : #tests }
EarthTests >> testEarthRotationPeriodClassMethod [
	| rotationPeriod |
	rotationPeriod := Earth rotationPeriod.
	self assert: rotationPeriod asString equals: '0:23:56:04'
]

{ #category : #tests }
EarthTests >> testEarthRotationPeriodInstanceMethod [
	| earth rotationPeriod |
	earth := Earth new.
	rotationPeriod := earth rotationPeriod.
	self assert: rotationPeriod asString equals: '0:23:56:04'
]
