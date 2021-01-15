Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [
	| handle |
	handle:= self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each].
	^ handle.
]

{ #category : #adding }
DieHandle >> addDie: aDie [
	dice add: aDie.
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size.
]

{ #category : #'as yet unclassified' }
DieHandle >> initialize [
	"Initialize the number of faces to 6 by default" 
	super initialize.
	dice:= OrderedCollection new.
]

{ #category : #accessing }
DieHandle >> roll [
	^ dice inject:0 into: [:sum :each | sum + each roll ]. 
]
