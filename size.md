alias
  ~ Number, length, count.

idea
  ~ Quantity before quality.

context
  ~ A data element with some length or another numeric property.

motivation
  ~ Data elements with known size can be arranged and compared
    independent from their actual content. Size is relevant also because
    processing and storing data is always limited by size.

implementations
  ~ -   Use a special element as end-marker such as the null byte for
        null-terminated strings ([prohibition]()).
    -   Explicitly encode size value and content in an [embedding]().
    -   Use fixed size elements only.

examples
  ~ -   The size of a byte is 8 bit.
    -   All finite data types have limited size.
    -   Numeric data types represent a size.
    -   UTF-8 is a variable width encoding that expresses the number of
        bytes of a character with the number of 1 bits in the first
        byte.
    -   The possible number of occurrences of a data element can be
        expressed in [schema]() languages, for instance with `:n-m`
        (BNF), `minOccurs`/`maxOccurrs` (XSD), and
        `maxCardinality`/`minCardinality` (OWL).

difficulties
  ~ -   The prohibited end-marker may be allowed to be escaped. For
        instance the ending double quote in a string may be encoded as
        `\"`. Such [encoding]() requires to parse the full content,
        contradicting the motivation of the size pattern.
    -   The conceptual difference between number (multiple elements) and
        size (one element) is not clear in all data.
    -   Counting requires to detect boundaries between elements (see
        [sequence]() and [separator]() patterns).

related patterns
  ~ -   Sizes can be constrained by a [schema]().
    -   The number of elements in a [container]() is a size.
    -   The size pattern includes the idea of (natural) numbers. Ordinal
        numbers in contrast are covered by the [sequence]() pattern.

specialized patterns
  ~ Knowing the exact size of an element allows to skip its internal
    structure ([atomicity]()).


