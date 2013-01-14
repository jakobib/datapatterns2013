alias
  ~ Empty element.

idea
  ~ A data element is given by a gap.

context
  ~ Empty elements may occur everywhere in between other elements.

motivation
  ~ Some elements should not be expressed because they would virtually
    occur everywhere or because their expression would be confused with
    other content.

implementations
  ~ An [embedding]() or [schema]() can indicate the context in which
    data can be read from gaps. The [separator]() pattern is typically
    applied in form of borders around the gap.

examples
  ~ -   An empty string is not given as such but by an empty
        [embedding]() (`""`). The same applies to other empty instances
        of [sequence]() and [container]().
    -   Default values are not given explicitly. Even if no default
        values are defined, one could just omit an element to indicate
        another value: a missing value is also a value.
    -   Unit types in data type systems are not visible as data but by
        referencing them in other structures.
    -   Assumed rules can lead to implicit [derivation]() of data that
        is not directly expressed (for instance affiliation to
        superclasses and derived RDF statements).
    -   Given a comparison rule for equality of elements, one
        automatically gets an unexpressed normalized form of each
        element.

counter examples
  ~ A gap can also be a sign of [optionality]() where an element does
    not need to be expressed.

difficulties
  ~ As empty elements may occur virtually everywhere between other
    elements, it is difficult to spot empty elements and irrelevant
    empty elements may wrongly be assumed.

related patterns
  ~ -   [Optionality]() is an alternative to the void pattern.
    -   If elements are cropped to a maximum length or form the
        original, full form is implicitly given ([etcetera]()).
    -   The [garbage]() pattern is kind of the contrary to the void
        pattern: void is content without form, garbage is form without
        content.

implied patterns
  ~ A void element is always [derivation]() of some other data elements.


