alias
  ~ Black box, brick, encapsulation.

idea
  ~ Take some data as one element without having to deal with its
    internal structure.

context
  ~ Any data element.

motivation
  ~ Reduce complexity to the smallest unit possible.

implementations
  ~ -   If the [size]() of a data element is known, one can skip over
        its content.
    -   Define an [encoding]() to abstract from the actual content of a
        data element.
    -   Indicate borders of the element with an [embedding]().

examples
  ~ -   In file systems the file is atomic: it's content is one
        arbitrary piece of data.
    -   In conceptual modeling the entity is atomic.
    -   Most data description languages have the notion of "basic" data
        types.
    -   An API encapsulates internals of a data element.
    -   First normal form (1NF) in relational databases.
    -   The only totally atomic data element is the bit.

counter examples
  ~ A character string delimited by double quotes is not fully atomic.
    The string must either disallow quotes as content or allow escape
    sequences ([prohibition]()) that force interpretation of the
    string's internal structure.

difficulties
  ~ -   Internals of data elements are rarely hidden in total. As soon
        as details of an element such as its member elements (see
        [container]()) can be inspected, the element is not fully atomic
        anymore.
    -   One cannot refer to parts of an atomic element.
    -   Although a non-descriptive [identifier]() should be atomic, it
        is common practice to inspect its structure. For instance the
        actual character string of an URI Reference has no meaning in
        the RDF model, but it is common to group and interpret these
        strings for instances based on namespaces.
    -   Atomicity is broken if levels of abstraction are not fully
        separated.
    -   One should be able to replace the content of an atomic element
        with random data, for instance "XXXXX". In practice the content
        is often limited by [prohibition](), so the element is not fully
        atomic.

related patterns
  ~ -   A [container]() is an alternative strategy to wrap data. Its
        internal structure is typically visible.
    -   To achieve atomicity, and as alternative to atomicity,
        [encoding]() can be used.
    -   If the hidden content of an atomic element does not matter
        anyway, the element can also be [garbage]().
    -   Atomic elements may still have properties which can be connected
        to the atomic elements via [dependence]().

implied patterns
  ~ It must be known where an atomic data element starts and where it
    ends without having to look into its content, so atomic data
    elements have a known [size]().


