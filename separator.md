alias
  ~ Delimiter.

idea
  ~ An element indicates the boundary between two other elements.

context
  ~ A [sequence]() with at least two elements and a third separator
    element.

motivation
  ~ Indicate borders and connections between data elements.

implementations
  ~ Select data elements that must not occur in normal content
    ([prohibition]()) or mark an element as (non)separator by a
    [flag](). A [schema]() can tell which separators to use at which
    places.

examples
  ~ -   Whitespace characters separate words.
    -   Brackets and delimiters, such as `{`, `[`, `(`, `)`, `]`, `}`
        and `,`, `|`, `;`, `:` etc. are used as separators in JSON, INI,
        CSV and other data structuring languages. Similar characters are
        also popular for ad-hoc structuring of values, for instance to
        create lists and annotations.
    -   ASCII defines four level separator characters (code 28 to 31).
    -   Lines in conceptual diagrams are used as borders and
        connections.

counter examples
  ~ Being a separator is not an inherent property of a data element, so
    whitespace, brackets and delimiters may also occur as normal
    content.

difficulties
  ~ -   Parts of elements can be misread as separator and vice versa.
    -   Most elements divided by separators are divided by separators on
        their parts. Such hierarchic embeddings can be read ambiguously
        (for instance `"( { ) }"`).
    -   It is not obvious whether separators indicate borders and
        connections between elements on the same level (for instance
        arrows in a diagram) or whether they also combine elements by
        subsumption (for instance subfield indicators).
    -   In sequences it must be clear whether separators occur between,
        after, or before an element, otherwise one can unintentionally
        introduce empty elements, for instance by ending a
        comma-separated list with a comma.

related patterns
  ~ -   One can alternatively use data elements of known [size]() so no
        explicit delimiters are needed.
    -   Separators can simultaneously act as [flag]() to indicate the
        type of a connection.
    -   If the actual form of a separator does not matter, the separator
        element is an example of the [garbage]() pattern.

implied patterns
  ~ An [embedding]() gives context to separating elements and makes
    clear which data elements are actually separated and connected.


