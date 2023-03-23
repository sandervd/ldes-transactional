# Abstract
# Introduction

## Object graph
An RDF statement t is a triple
(s, p, o) ∈ (I ∪ B) × I × (I ∪ B ∪ L)
- I is the set of IRIs
- B is the set of all the blank nodes
- L is the set of literals
An RDF graph is a finite set of RDF statements.

For an RDF graph to be considered a valid object graph, it must be a set of disjoint RDF objects, where an RDF object is defined as a valid RDF graph with the following additional constaints imposed:
∀ s(t) ∈ I -> |s(t)| = 1
-> The cardinality of the set of named subjects (IRI) of the statements is one; frased differently, only one named subject is present in the graph.

∀ s(t) ∈ B -> |s(t)| >= 1 ^ |o(t)| = 1
-> The cardinality 



A RDF object is a (sub)graph, that consistes of triples of exactly one named subject (RDF URI reference), as well as the blank nodes referenced by those triples (recursively).
For example:
```
:dog a :animal ;
    rdfs:label "Dog" ;
    :hasAnatomy [
        :paws "4";
        :HasFur "true"
    ] .
:fish a :animal ;
    rdfs:label "Fish" ;
    :hasAnatomy [
        :paws "0";
        :hasFur "false"
    ]
```
This graph would be considered an object graph, consisting of 2 RDF objects , that can be identified by their unique named subject; we can identify two RDF objects ":dog" and ":fish" .
The following constraints apply to RDF objects:
- A blank node identifier is referenced only once in the object position.
- A blank node identifier can only be used in the subject position, if it is referenced somewhere in the object position.

Although not all RDF graphs can be expressed as object graphs, the impact is considered limited (https://link.springer.com/content/pdf/10.1007/978-3-642-25073-6_27.pdf?pdf=inline%20link), and introducing these constraints to a graph allows for practical optimisations.

An RDF object graph can be considered a set of trees, or as a set of key-value pairs.





Since the introduction of RDF (need ref) differential algos have been proposed to patch graphs.
Additional: Need full objects: easy materalisation in document databases, or project to relational db.


Constraints imposed on graph:
For a graph to be serializable over LDES transacional, the following additional constraints are imposed. Although this means that not all RDF can be serialized, 

# Related work
https://www.w3.org/DesignIssues/Diff

RDF Patch https://afs.github.io/rdf-patch/


# Method and implementation

# Use case
# Demonstration
# Conclusion
# References