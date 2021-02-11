Class {
	#name : #CountingManualInterpreterSelf,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #initialization }
CountingManualInterpreterSelf >> initialize [ 
	super initialize.
	count := 0
]

{ #category : #initialization }
CountingManualInterpreterSelf >> numberOfMessages [
	^ count
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitArrayNode: aRBArrayNode [ 
	^ self
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitAssignmentNode: anAssignmentNode [ 
	anAssignmentNode value acceptVisitor: self
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitLiteralValueNode: aRBLiteralValueNode [ 
	^ self
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitMessageNode: aRBMessageNode [
	aRBMessageNode receiver acceptVisitor: self.
   aRBMessageNode arguments do: [ :each | each acceptVisitor: self ]
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitMethodNode: aMethodNode [
	aMethodNode statements do: [ :each | each acceptVisitor: self ]
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitReturnNode: aReturnNode [
	^ self
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitSelfNode: aRBMethodNode [
	count := count + 1.
	^ self
]

{ #category : #initialization }
CountingManualInterpreterSelf >> visitVariableNode: aRBVariableNode [ 
	^ self
]
