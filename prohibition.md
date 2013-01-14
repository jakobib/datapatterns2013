alias
  ~ Forbidden element, exception.

idea
  ~ Exclude specific elements.

context
  ~ A data element with [embedding]() in another element.

motivation
  ~ Define what is *not* allowed instead of listing all possibilities.

implementations
  ~ -   Explicitly list all disallowed elements (creating a
        [container]()).
    -   Refer to a [schema]() that tells which elements to avoid.
    -   Use an [encoding]() that does not include prohibited elements.

examples
  ~ -   File systems disallow specific characters in file names, such as
        quotes, brackets, dot, colon, bar, asterisk, and question mark.
    -   A null-terminated character string must not contain null-bytes.
    -   Unicode and languages build on top, such as XML and RDF,
        disallow specific character code points.
    -   A [separator]() element cannot occur as normal content.
    -   With Closed World Assumption everything is disallowed unless
        defined as allowed. With Open World Assumption one needs to
        explicitly state disallowed elements.
    -   Formal grammars extended by difference operator or negation in
        boolean grammars allow to express arbitrary forbidden elements
        in a [schema]().
    -   In mandatory fields ([optionality]()) empty elements are
        prohibited.
    -   Specific [graph]() types disallow some kinds of vertices, such
        as loops and circles.

difficulties
  ~ -   Prohibitions as "exceptions from a rule" are easy to grasp for
        human beings but they are more difficult to detect and compute
        algorithmically. Boolean grammars which support formal
        expression of exceptions via a negation operator are still more
        research topic rather than a practical tool for data
        description.
    -   Exceptions can have their own exceptions (the world *is*
        complex).
    -   Some prohibitions are not stated explicitly but implied by
        external constraints ([derivation]()). For instance numbers in
        JSON can have arbitrary precision but in practice they are
        limited to standard floating point and integer representations.

related patterns
  ~ -   If the prohibition depends on existence of another element, it
        is rather an instance of the [flag]() pattern.
    -   [Optionality]() and mandatory constraints can be used in a
        [schema]() to express whether an element must be present.

implied patterns
  ~ Every prohibition is either part of a [schema]() or it constitutes a
    virtual [schema]() consisting of this single prohibition.


