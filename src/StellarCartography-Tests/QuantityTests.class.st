Class {
	#name : #QuantityTests,
	#superclass : #TestCase,
	#category : #'StellarCartography-Tests'
}

{ #category : #tests }
QuantityTests >> testMomentum [

	| mass distance duration velocity momentum |
	mass := 3175 kilograms.
	distance := 344 meters.
	duration := 1 second.
	velocity := distance / duration.
	momentum := velocity * mass.
	self assert: momentum value equals: 1092200.
	self assert: momentum units equals: (Dictionary newFrom: { 
				 ('kilograms' -> 1).
				 ('meters' -> 1).
				 ('seconds' -> -1).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0).
				 })
]

{ #category : #tests }
QuantityTests >> testVelocity [

	| distance duration velocity |
	distance := 344 meters.
	duration := 1 second.
	velocity := distance / duration.
	self assert: velocity value equals: 344.
	self assert: velocity units equals: (Dictionary newFrom: { 
				 ('kilograms' -> 0).
				 ('meters' -> 1).
				 ('seconds' -> -1).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0) })
]