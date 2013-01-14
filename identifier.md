alias
  ~ Pointer.

idea
  ~ An element is used to refer to another.

context
  ~ An element as pointer and another element from a set of possible
    targets.

motivation
  ~ Identifiers help establishing uniqueness and allow to refer to
    elements which not are directly available or impractical to express.

implementations
  ~ Identifier systems defines which identifiers exist and what data
    elements they refer to.

examples
  ~ -   Keys or field names in key-value structures or records.
    -   Queries and requests expressed in data, for instance an XPath
        expression.
    -   Data elements originally created for identification, such as
        URIs and link anchors.
    -   Parts of an [encoding](), for instance the byte `0x41` that
        encodes the letter "A" in ASCII.
    -   Computable hash codes which directly transform the content of an
        element into an identifier.
    -   The identity which distinguishes a data element from any other
        data elements, can only be expressed by an identifier. Every
        metadata that uniquely refers to this single element is an
        identifier.
	-	A geocode, given as WGS 84 coordinate, can identify a place
		or an address.

difficulties
  ~ -   An identifier must only refer to one element. If it refers to
        multiple elements, it is not clear whether this is an error (for
        instance collisions of hash codes), or whether all referenced
        elements are equal, or whether the collection of all referenced
        elements is actually identified.
    -   Multiple identifiers may point to the same element, making it
        difficult to reverse the relation.
    -   The existence of an identifier does not tell the kind of
        relation it is used for (e.g. as representation or to indicate a
        type or membership).
    -   Identifiers may be meaningless (for instance inode numbers of
        files or memory addresses), it may be used as [label]() or it
        may be a descriptive identifier with [embedding]().
    -   The practical requirements of an identifier (unambiguity,
        uniqueness, persistence, readability, scope, actionability)
        contradict each other.

related patterns
  ~ An identifier may simultaneously act as [label]() or it may have a
    structure with content that can further be analyzed ([embedding]()).
    If positions are used as identifiers, there must be a [sequence]()
    to refer to.

specialized patterns
  ~ Every [encoding]() is based on a set of identifiers.


