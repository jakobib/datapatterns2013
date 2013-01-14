alias
  ~ Possibility, required, mandatory.

idea
  ~ An element may be present but it can also be absent.

context
  ~ A data element as part of a [schema]() or [embedding]().

motivation
  ~ Express constraints and possibilities and allow for flexibility.

implementations
  ~ Either optional or mandatory elements must be marked by a special
    [flag]().

examples
  ~ -   Optional parts in regular expressions are indicated by a
        question mark or with an asterisk.
    -   Mandatory roles in ORM are marked by a dot.
    -   Requirement keywords defined in RFC 2119 (MUST, MUST NOT,
        SHOULD, SHOULD NOT, MAY).
    -   Elements in regular grammars are mandatory by default. In other
        systems, such as RDF Schemas, elements are optional by default.
    -   The end-tag matching to a start-tag in XML is mandatory. The
        same applies to closing brackets in JSON and other nested
        structures.
    -   With a fixed [size]() a specific number of elements is
        mandatory.
    -   Annotations and qualifiers as optional additional elements
        ([flag]()).

counter examples
  ~ -   Default values, for instance default XML namespaces, make
        optional elements impossible because a default value cannot be
        omitted.

difficulties
  ~ -   Optionality adds deontic logic to the realm of data, with all of
        its difficulties: constraints on mandatory or optional data
        elements are not true or false but they can only be fulfilled or
        violated. Formalization of deontic rules may also lead to
        unexpected logic results.
    -   Different levels of obligation may exist: in practice some
        elements are more optional or more mandatory than others.
    -   Optional elements can be made mandatory and mandatory elements
        can be made optional by introducing special [garbage]()
        elements, such as `/`, `n/a`, `-`, `0` etc. Such null values are
        also created ad-hoc to trick mandatory constraints. For instance
        `12345` in a number field may indicate that the actual number
        was not available.
    -   In a [schema]() it is common to either explicitly mark only
        mandatory only optional, assuming the other case as default. One
        needs to know which is the default in which context.

related patterns
  ~ -   If optional parts are irrelevant, they can also be [garbage]().
    -   An absent element can still be data as [void]() element.
    -   Instead of or in addition to being mandatory, elements can also
        be derivable from other elements ([derivation]()).
    -   [Prohibition]() can be used in a [schema]() to express that
        specific elements must not be present.

implied patterns
  ~ Every optionality is either part of a [schema]() or it constitutes a
    virtual schema consisting of this single optionality.


