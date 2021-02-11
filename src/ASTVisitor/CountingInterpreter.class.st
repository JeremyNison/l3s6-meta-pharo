Class {
	#name : #CountingInterpreter,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #initialization }
CountingInterpreter >> initialize [ 
	super initialize.
	count := 0.
]

{ #category : #'as yet unclassified' }
CountingInterpreter >> numberOfMessages [
	^ count
]

{ #category : #initialization }
CountingInterpreter >> visitMessageNode: aMessageNode [
	super visitMessageNode: aMessageNode.
	count := count + 1.
]
