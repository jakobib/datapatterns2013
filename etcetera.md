alias
  ~ Ellipsis, partial collection, explicit abbreviating.

idea
  ~ Indicate that a collection of data elements is incomplete.

context
  ~ A [container]() or [embedding]() of elements.

motivation
  ~ Collections may be too large to be expressed, or parts of a
    collection may be unimportant or already implied by context. This
    pattern allows for abbreviating and to show that a collection
    contains more then explicitly expressed.

implementations
  ~ First, one needs to decide which parts to omit:

    -   Only express the first or the most important parts.
    -   Only express mandatory parts and omit the rest
        ([optionality]()).
    -   Give a random sample of of elements ([garbage]()).

    Second, the etcetera indicator can be expressed in several ways:

    -   Use a special element as etcetera indicator. This element must
        be a [prohibition]() to not be confused with normal parts.
    -   Use obviously wrong elements as placeholders ([garbage]()).
    -   Define a fixed cut, for instance a maximum length.

examples
  ~ -   `...` or `et al.` to indicate an abbreviated [sequence]().
    -   `e.g.` to indicate that the included elements are examples from
        a larger set.
    -   Omission of parts in the middle of an element with `[...]`.
    -   Library cataloging rules exist to only include three authors in
        a record, so the list of authors is always abbreviated if there
        are more then three authors.

counter examples
  ~ Omission of details can also be an example of generalization and
    abstraction (see [encoding]()) instead of abbreviation.

difficulties
  ~ -   Type and number of omitted parts and the reason for abbreviating
        are often unclear.
    -   An etcetera indicator and normal parts of a collection must not
        be confused (for instance strings that actually end with `...`).
    -   Indicators could also be used to tell that a collection may be
        extended or that an element can be repeated (see [container]()
        and [schema]() patterns).

related patterns
  ~ With a fixed cut this pattern also uses the [void]() pattern instead
    of an explicit etcetera indicator. The void pattern is also similar
    because it indicates elements. The etcetera pattern in contrast
    indicates the existence of more elements.

implied patterns
  ~ The etcetera indicator only makes sense as part of an [embedding]()
    (typically a container or sequence).


