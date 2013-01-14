alias
  ~ Frame.

idea
  ~ Put data elements as part into another element.

context
  ~ At least two data elements, one of them a host or frame, in which
    the other elements are embedded.

motivation
  ~ Build data hierarchies.

implementations
  ~ -   A frame of [separator]() elements to put embeddings in between.
    -   The structure of an embedding can be expressed by a [schema]()
        with placeholders, such as grouped expressions in BNF or
        non-terminal symbols in other formal grammars.

examples
  ~ -   An XML element with embedded child elements.
    -   The structure "surname, given" with surname and given name
        embedded into a name element.
    -   A qualified expression, such as "Marx, Karl, 1818-1883" from the
        Library of Congress name authority file with qualifier
        "1818-1883".
    -   Rules in a formal grammar with non-terminal symbols.
    -   All kinds of templates and forms that data is put into.
    -   A namespace with prefix (to specify the context) and embedded
        local identifier.
    -   Tree structures and part-whole relationships.

difficulties
  ~ -   A clean hierarchy is sign of oversimplification. In practice one
        has to deal with cross-connections, parallel and overlapping
        hierarchies (e.g. `"( { ) }"`).
    -   Once a template has been filled with values, it becomes
        invisible. One must know the embedding rules to rediscover
        embedded elements, otherwise embedding frame and content easily
        get mixed up.
    -   Embeddings are part of other embedding, forming a long chain of
        levels. This chain should contain no circles, but
        self-referential embeddings may exist both in the conceptual
        realm and in the data realm (for instance a document that refers
        to itself or a zip file that contains a copy of itself).

related patterns
  ~ -   A hierarchical structure could also be a constrained [graph]()
        instead.
    -   Hierarchic nesting is also found in [encoding](). While
        encodings stress the relations between signifier and signified,
        the purpose of an embedding is more to give context. The
        relation between encodings and embeddings is similar to the
        semiotic relation between langue and parole.
    -   Embedded elements may be mandatory or optional
        ([optionality]()), they may be constrained by [prohibition]()
        and they may be abbreviated ([etcetera]()). If an embedding is
        primarily used to express such constraints, it is likely a
        [schema]().
    -   Embedded elements may be secondary to the frame they are
        embedded in ([dependence]()).

specialized patterns
  ~ A [container]() embeds multiple member elements.


