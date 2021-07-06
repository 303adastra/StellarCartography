Class {
	#name : #EarthTests,
	#superclass : #TestCase,
	#category : #'StellarCartography-Tests'
}

{ #category : #tests }
EarthTests >> testEarthRotationPeriod [
	| rotationPeriod |
	rotationPeriod := Earth rotationPeriod.
	self assert: rotationPeriod asString equals: '0:23:56:04'
]
