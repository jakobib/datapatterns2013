alias
  ~ Array, vector, table, list, order.

idea
  ~ Strictly order multiple elements, one after another.

context
  ~ A [container]() of multiple elements.

motivation
  ~ Define order and positions among data elements.

implementations
  ~ -   If member elements have a known [size](), they can directly be
        concatenated. If elements further have the same size, their
        position can directly be used as [identifier]().
    -   The [separator]() pattern can be used to separate each element
        from its successor element. To distinguish member elements and
        separators, this implies the [prohibition]() pattern. If
        separators are allowed to occur directly after each other, this
        can also imply the [void]() pattern.
    -   One can link an element to its successor with an [identifier]().
        To avoid link structures that result in arbitrary [graph]()
        patterns, additional constraints must be applied.
    -   Objects can be sorted implicitly by some specific property of
        each element.

examples
  ~ -   A string of ASCII characters.
    -   A sequence of lines.
    -   A sequence with separator: '`Kernighan and Ritchie`' with
        separator '`and`'.
    -   A sequence of linked steps: *extract* → *transform*, *transform*
        → *load*.
    -   Sequences with multiple dimensions are known as arrays, vectors,
        tables, and matrices.

counter examples
  ~ Any unordered collection is no sequence. For instance files in a
    file system and records in a database table have no inherent order.

difficulties
  ~ -   Empty sequences ([void]() pattern) and sequences of one single
        element are difficult to spot, like in other [container]()
        patterns.
    -   Sequences are a natural method to model one-dimensional
        phenomena, for instance sequences of events in time. As digital
        storage is structured as sequence of bits, sequences seem to be
        the natural form of data. Other expressions such as formal
        diagrams and visual programming languages are often not
        considered as data also because they are not ordered.

related patterns
  ~ -   In the end most data is given as sequence of bits, so many
        implementations of other patterns use sequences on a lower
        level.
    -   The position within a sequence is often used as [identifier]().
    -   Sequences can be implied by order of some connected property
        ([derivation]()).
    -   The sequence pattern includes the idea of ordinal numbers. Other
        kinds of numbers depend on the [size]() pattern.

implied patterns
  ~ Without context, sequences are difficult to distinguish from other
    [container]() patterns.


