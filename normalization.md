alias
  ~ Canonical form, equivalence, one-to-one.

idea
  ~ Make equal data elements identical by choosing one preferred
    version, based on relevant distinctions only.

context
  ~ A set of data elements, one of them selected as normalized.

motivation
  ~ -   Avoid ambiguity, redundancy and inconsistencies.
    -   Group multiple data elements with same characteristics.

implementations
  ~ -   Avoid [derivation]() and [garbage]() in the data to be
        normalized.
    -   Define normalization rules in a [schema]().

examples
  ~ -   Database normalization is recommended to avoid redundancy and
        inconsistencies.
    -   Unicode defines several normalization forms (NFD, NFC, NFKD,
        NFKC).
    -   XML Schema Datatypes have a canonical lexical representation to
        establish a one-to-one mapping between value space and literal
        representations. For instance the boolean value false can be
        represented as `0` and as `false` but the latter is the
        canonical, normalized form.
    -   Approximate data types use a finite (or denumerable infinite)
        number of distinct values to represent an infinite number of
        values. The approximation normalizes the infinite set by mapping
        multiple values to one.
    -   Whitespace normalization replaces multiple and different
        whitespace characters by one simple whitespace character.
    -   An ISBN can have multiple forms (with or without hyphen, or
        space, as ISBN-10 or ISBN-13 etc.).

difficulties
  ~ -   Normalization depends on uniquely identifiable entities but an
        [identifier]() or [label]() is often missing.
    -   Normalization concentrates on the relevant aspects of a data
        element. It requires to define what variants are considered
        equivalent and what makes a difference. All these properties,
        however, may depend on context.
    -   Normalizing [graph]() structures can be very hard both
        computationally and practically.
    -   Ordered values (numbers, coordinates...) can be treated as equal
        if they have a low distance, but they cannot be normalized
        because distance is not a transitive function.
    -   Despite its theoretical importance, for instance in database
        theory, normalization in practice is often applied incompletely
        or not at all.

related patterns
  ~ -   Normalization groups data elements based on sameness of their
        characteristic properties. More general methods of grouping are
        examples of the [container]() pattern.
    -   Every normalization defines an [identifier]() (the reverse does
        not apply).
    -   Normalization may also be virtual, resulting in the [void]()
        pattern. For instance in some file systems file names are case
        insensitive but case preserving, so the normalized file name is
        not given directly.

implied patterns
  ~ Every normalization implies a form of [encoding](), as data elements
    can be encoded by the form they are normalized to. For instance XML
    documents are encoded by their document model, which gives a
    normalized form.


