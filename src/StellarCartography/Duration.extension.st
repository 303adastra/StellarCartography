Extension { #name : #Duration }

{ #category : #'*StellarCartography' }
Duration >> raisedTo: aNumber [

	^ Quantity new
		  value: (self seconds raisedTo: aNumber)
		  units: (Dictionary newFrom: { ('seconds' -> aNumber) })
]
