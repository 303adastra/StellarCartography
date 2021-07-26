Extension { #name : #Number }

{ #category : #'*StellarCartography' }
Number >> cubicmeter [

	^ self cubicmeters
]

{ #category : #'*StellarCartography' }
Number >> cubicmeters [

	^ Quantity new
		  value: self
		  units: (Dictionary newFrom: { ('meters' -> 3) })
]

{ #category : #'*StellarCartography' }
Number >> kilogram [

	^ self kilograms
]

{ #category : #'*StellarCartography' }
Number >> kilograms [

	^ Quantity new
		  value: self
		  units: (Dictionary newFrom: { ('kilograms' -> 1) })
]

{ #category : #'*StellarCartography' }
Number >> kilometer [

	^ self kilometers
]

{ #category : #'*StellarCartography' }
Number >> kilometers [

	^ self meters * 1e3
]

{ #category : #'*StellarCartography' }
Number >> meter [

	^ self meters
]

{ #category : #'*StellarCartography' }
Number >> meters [

	^ Quantity new
		  value: self
		  units: (Dictionary newFrom: { ('meters' -> 1) })
]

{ #category : #'*StellarCartography' }
Number >> millimeter [

	^ self millimeters
]

{ #category : #'*StellarCartography' }
Number >> millimeters [

	^ self meters * 1e-3
]
