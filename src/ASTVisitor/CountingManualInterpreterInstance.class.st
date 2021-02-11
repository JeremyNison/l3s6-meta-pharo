Class {
	#name : #CountingManualInterpreterInstance,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #initialization }
CountingManualInterpreterInstance >> initialize [ 
	super initialize.
	count := 0
]

{ #category : #initialization }
CountingManualInterpreterInstance >> numberOfMessages [
	^ count
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitArrayNode: aRBArrayNode [
	^ self
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitAssignmentNode: anRBAssignmentNode [
	anRBAssignmentNode value acceptVisitor: self
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitMessageNode: aRBMessageNode [ 
	aRBMessageNode receiver acceptVisitor: self.
	aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitReturnNode: aReturnNode [
	^ self
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitSelfNoe: aRBMethodNode [
	count := count + 1.
	^ self
]

{ #category : #initialization }
CountingManualInterpreterInstance >> visitVariableNode: aRBVariableNode [
	^ self
]
