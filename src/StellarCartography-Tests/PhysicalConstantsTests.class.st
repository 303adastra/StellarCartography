Class {
	#name : #PhysicalConstantsTests,
	#superclass : #TestCase,
	#category : #'StellarCartography-Tests'
}

{ #category : #tests }
PhysicalConstantsTests >> testGravitationalConstant [

	| g m |
	g := PhysicalConstant gravitational.
	m := Sun mass.

	self assert: (g value * 1e11 round: 4) equals: 6.6743.
	self assert: g units equals: (Dictionary newFrom: { 
				 ('kilograms' -> -1).
				 ('meters' -> 3).
				 ('seconds' -> -2).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0) })
]

{ #category : #tests }
PhysicalConstantsTests >> testGravitationalParameter [

	| g m mu |
	g := PhysicalConstant gravitational.
	m := Sun mass.
	mu := g * m.

	self assert: Sun mass value equals: 1.98847e30.
	self
		assert: (mu value / 1e20 round: 3)
		equals: (1.32712440018e20 / 1e20 round: 3).
	self assert: mu units equals: (Dictionary newFrom: { 
				 ('kilograms' -> 0).
				 ('meters' -> 3).
				 ('seconds' -> -2).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0) })
]
