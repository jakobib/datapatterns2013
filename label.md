alias
  ~ Name, type, nomenclature.

idea
  ~ Give data elements a name.

context
  ~ Any distinguishable data element.

motivation
  ~ Distinguish the nature of data elements and tell them apart by
    proper names.

implementations
  ~ A sequence of characters (string) that should have a well-known
    meaning for human readers. Any documentation (definitions,
    translations, examples etc.) helps to clarify the interpretation of
    a label.

examples
  ~ -   Domain names in DNS.
    -   File names in file systems.
    -   Field names in records and database schemas.
    -   Object keys in JSON and other data structuring languages.
    -   Tag names in XML and related markup languages.
    -   Names of classes and properties in RDF ontologies
        (`rdfs:label`).
    -   Names of entity types and relationship types in conceptual
        models.
    -   Class names in object orientated modeling.
    -   URI references within the RDF model do not carry any semantics
        but they usually include labels for human readers.

counter examples
  ~ Labels have no internal structure. For instance the character
    sequence "Dublin, Ohio", which refers to a city in the US, is not a
    pure label but it consists of two labels ("Dublin" and "Ohio"), one
    acting as qualifier for the other ([flag]() pattern). Another
    counter example is a list of field names such as "address1,
    address2...", that together refer lists of repeatable objects. Each
    of these field names is not a label but it consists of a label
    ("address") and a [sequence]() indicator. To test whether a data
    element is a label, think about whether replacing all of its
    occurrences with the same random value would make a difference.

difficulties
  ~ Labels are textual signs primarily interpreted by human readers. The
    label refers to something outside of the domain of data so one
    cannot find out its referent by looking at the data only but one
    must analyze its usage in practice. Labels may be both synonymous
    (multiple labels with same referent) and homonymous (one label used
    with different referents in different contexts). Labels are often
    created ad-hoc just because an identifier is needed. A
    well-considered choice of a label can improve readability of data a
    lot.

related patterns
  ~ -   A label is similar to an [identifier]() and often both coincide.
        An identifier, however, always refers to a specific data element
        while the referent of a label can be more fuzzy.
    -   Data elements in an [encoding]() also refer to something but
        their mapping could be changed without making any difference.
    -   If labels are mutually exclusive, they can also act as [flag]().
    -   The actual value of a label is irrelevant to most data
        processing activities (one could replace all of its occurrences
        with a hash value), so a label may also be [garbage]().


