alias
  ~ Collection.

idea
  ~ Combine a number of elements to a larger structure.

context
  ~ A set of multiple data elements.

motivation
  ~ Combine multiple independent elements on the same level to refer to
    them as a joint group.

implementations
  ~ -   Explicitly list all member elements which belong to the
        container.
    -   Specify a method to check whether an element belongs to the
        container.

examples
  ~ -   A directory of files in a file system.
    -   An archive containing a set of files.
    -   A set of records in a database.
    -   A repeatable entity or relationship in a schema. In fact the
        concept of repeatability is an instance of the container
        pattern.
    -   An entity type in a schema is the set of all of its instances.

counter examples
  ~ A single record with its properties does not constitute a container
    because properties depend on the record instead of being
    independent.

difficulties
  ~ -   A container may hold a single member element only, making the
        collection difficult to distinguish from the element as such.
    -   A container may be empty, making it difficult to list member
        elements.

related patterns
  ~ -   Explicitly listing member elements requires a [sequence]().
    -   A membership function is a form of [derivation]().
    -   Empty containers often involve an implicit element ([void]()).
    -   Collections are used to refer to elements (or to a type of
        elements) with a human readable [label]().
    -   Each collection defines the property of "belonging to the
        collection". An alternative pattern to group by same properties
        is [normalization]().
    -   Collections may be abbreviated ([etcetera]() pattern).
    -   Containers are also used to wrap or abstract from sets of data.
        This goal can better be achieved by [atomicity]().

implied patterns
  ~ -   A container is a special kind of [embedding]() with member
        elements embedded into the collection as host element.
    -   Unless abbreviated, containers have a specific number of member
        elements which implies the [size]() pattern.

specialized patterns
  ~ A [sequence]() and a [graph]() typically consist of collections of
    elements.


