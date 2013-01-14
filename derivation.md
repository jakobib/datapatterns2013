alias
  ~ Implication, functional dependency.

idea
  ~ An element is implied by and derived from other elements.

context
  ~ Two data elements, one of them implied by the other.

motivation
  ~ -   Enforce integrity and conformance to some rules.
    -   Mark redundancy to better find relevant parts in data.
    -   Provide different views to the same information.

implementations
  ~ -   Apply a mathematical model with derivation rules as exact
        statements.
    -   Explicitly list derivations, for instance in tables of if-then
        rules.

examples
  ~ -   Given a date of birth and the current date, an age is implied.
    -   As soon as two elements are related to a third, there is an
        implicit relation between the two (for instance co-citation for
        two works that cite a common third).
    -   RDF-entailment regimes and inference rules add new triples to
        RDF graphs. These new elements can be expressed or used as
        implicit, virtual values ([void]()).
    -   The concept of derived types and inheritance is based on
        derivation: properties of a subclass are derived from another
        class.
    -   Hash codes can be calculated from all digital documents.
    -   An empty string is not given as content but implied by its
        surroundings.
    -   The length of a non-empty string can be derived from its
        content.
    -   If elements are pairwise comparable, a partial order is implied
        among them. If the elements are further distinct, a [sequence]()
        is automatically implied.
    -   A [sequence]() implies a position for each element.
    -   End tags in XML are redundant: `<a>...</` can automatically be
        completed with `a>`.
	-	A postal code can be derived from other parts of an address.
    -   All forms of redundancy originate from possible derivations. If two
        data elements are redundant then either one of them can be
        derived from the other or both can be derived from a common
        third element.

difficulties
  ~ -   Data in practice contains errors and inconsistencies. Deriving
        from these errors can extend negligible anomalies.
    -   Derivation is not necessarily unique (injective) or revertible
        (for instance a hash code).
    -   Chaining inferences can lead to fallacies. For instance each
        book series could belong to exactly one publisher and each book
        to exactly one series, so a book implies its series and a series
        implies a publisher. Both rules do not forbid the inclusion of a
        book from one publisher as special issue in a series of another,
        making a chained inference from book to publisher invalid.
    -   Co-occurrences and correlations look similar to functional
        dependencies although they generally aren't.
    -   General implication rules only cover deductive reasoning.
    -   The existence of an implication does not necessarily tell how
        data can actually be derived. If derivation rules act like a
        black box, it is difficult to make use of them.
    -   There is a continuum between data extraction (infer what can be
        derived) and data enrichment (extend data with other data) once
        one realizes that derivation rules have (and/or are expressed
        in) their own data.

related patterns
  ~ -   A derived element may also be dependent to its switch
        ([dependence]()).
    -   Elements that can be derived do not need to be expressed
        ([optionality]()).

specialized patterns
  ~ -   An [encoding]() is a special form of derivation that includes a
        set of implication rules, one for each possible value.
    -   If an element is not given directly ([void]() pattern) it must
        be implied instead.


