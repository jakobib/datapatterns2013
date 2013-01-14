alias
  ~ Secondary element.

idea
  ~ A secondary data element is attached to a primary element.

context
  ~ Two data elements, one more prominent than the other.

motivation
  ~ Structure data by importance and connect elements by affiliation.

implementations
  ~ -   The elements are ordered in a [sequence]().
    -   The primary element acts as [flag]() to the secondary element.
    -   A descriptive [separator]() connects the elements.

examples
  ~ -   Relations in entity-relationship models are secondary to
        entities.
    -   Attributes, properties, and annotations attached to data
        objects.
    -   Pointer types are secondary to the elements they point to
        (unless the pointer is a descriptive [identifier]()).
    -   Directed connections, for instance subclass relationships.
    -   Attributes of attributes (dependent elements can be stacked).
    -   Members of a [container]().

difficulties
  ~ -   The choice between primary and secondary elements can be rather
        arbitrary (a connection could also be expressed as entity and
        some vice versa). For instance members of a [container]() are
        secondary but collections only exist based on their member
        elements.
    -   Once fixed, it is difficult to switch primary and secondary.
    -   The primary element often modifies interpretation of the second
        ([flag]()).
    -   It is not always clear whether a data element is an integral
        part of an element or an additional annotation. For instance
        language tags in RDF look secondary but they are an essential
        property of literals.

related patterns
  ~ -   If multiple secondary elements can exist without a primary
        element, they are rather structured in a [container]().
    -   A "connection" between two elements may be a dependence but it
        could also be a form of [embedding]() or [flag]().
    -   [Derivation]() looks similar to dependence and both may coincide
        but neither or both imply the other. Derived elements may also
        exist independent from the elements that they can be derived
        from.

specialized patterns
  ~ Sets of dependencies with common elements can form [graph]()
    structures.


