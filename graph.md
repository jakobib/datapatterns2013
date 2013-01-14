idea
  ~ Nodes and vertices.

context
  ~ A set of multiple elements and connections between them.

motivation
  ~ Express connected data elements.

implementations
  ~ -   [Flag]() possible nodes (adjacency matrix).
    -   Store sets of vertices for each node ([container]()).
    -   Trees can be implemented by hierarchic [embedding]().

examples
  ~ -   Schemas and conceptual models with entities connected by
        relations.
    -   Conceptual diagrams with boxes connected by lines.
    -   Connected tables in relational databases.
    -   Directory trees in file systems.
    -   RDF graphs.
    -   Specific graph types such as trees.

difficulties
  ~ -   For most graphs there is no simple [normalization](). The graph
        canonization or isomorphism problem is computationally hard
        because elements in a graph have no natural order. This
        contrasts with [sequence]() as basic method to express data.
    -   Most practical graphs are more than simple structures build of
        nodes and vertices. Specialized types and properties of graphs
        exist, such as directed graphs, multigraphs, hypergraphs,
        labeled graphs, etc. For instance diagrams likely evolve to
        generalized hypergraphs with vertices that connect more than two
        nodes and even other vertices. Additional levels of [encoding]()
        may be necessary to get the common form of a graph with simple
        nodes and vertices.

related patterns
  ~ Specific graph types such as trees, grids, and lists often indicate
    alternative patterns such as hierarchies ([embedding]()) and order
    ([sequence]()). Bijective and injective graphs may better express
    [encoding](), [normalization]() or [dependence]().

implied patterns
  ~ -   Vertices in a graph are secondary elements to nodes
        ([dependence]()).
    -   The set of all nodes and/or vertices can be used as
        [container]().


