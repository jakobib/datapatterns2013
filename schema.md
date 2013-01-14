alias
  ~ Specification.

idea
  ~ Specify restrictions and extensions.

context
  ~ One data element (the schema) describes a set of other data
    elements.

motivation
  ~ Express common structures with requirements and constraints to be
    applied consistently for creation and consumption of data.

implementations
  ~ -   The schema is expressed in a formal schema language.
    -   The schema is expressed in form of human-readable rules.
    -   The schema is implicitly given in form of examples.
    -   A validator or another software is implicitly used as schema by
        checking whether data elements conform to the specification.

examples
  ~ -   Data definition languages and formal schema languages, such as
        BNF, XSD, RDFS/OWL, parts of SQL etc.
    -   A class in Object Orientation or the definition of a key-value
        structure specifies a data element with properties or fields.
    -   The sequence `YYYY-MM-DD` to define the structure of a date.
    -   Upper/lower bounds or other limits on value types.
    -   Repeatability markers such as `*` and `+`.
    -   A form with fields to fill out.
    -   An URI template.
    -   Guides how to construct file system pathes or queries in a query
        language.
    -   Any digital document that aims at defining other data.

difficulties
  ~ -   Schemas only tell *how* data is structured but not *why*. Some
        kind of [label]() is needed to actually interpret the elements
        of a schema.
    -   Many actual definitions in a schema are rather arbitrary. For
        instance a date could be defined with form `YYYY-MM-DD` or as
        `DD.MM.YYYY`.
    -   The degree of freedom in a schema can be too lax. For instance
        the date schema `YYYY-MM-DD` might not take into account the
        maximum number of days per month (28-31), leap years, Julian vs.
        Gregorian dates etc. Another typical example are plain text
        fields for anything or Unicode fields for strings that must
        contain letters only.
    -   The degree of freedom in a schema can be too strict, leading to
        violations and misuse. For a computer any violations makes the
        whole data element invalid but in practice errors can be
        acceptable or recoverable. Common misuse of strict schemas
        include the ad-hoc introduction of additional rules, such as
        [garbage]() values and [separator]() elements.
    -   Schemas are affected by communication and control standards
        which eventually are affected by informal standards.
    -   Applications may select parts of a schema and add rules from
        multiple schemas. This makes it difficult to find out which
        schema has actually been used and what exact set of rules is
        actually meant by a particular schema.
    -   The trend to express schemas in the same data structuring
        language that they constrain (for instance schema information
        tables in SQL, XML schemas in XML, and ontology languages in
        RDF, etc.) can lead to more complex schemas than necessary.
    -   Validators hidden in applications are difficult or impossible to
        analyze.
    -   Application of schemas on the wrong level of abstraction, for
        instance conformance to the XML syntax instead of conformance to
        a specific data format that can be encoded in XML.

related patterns
  ~ Without any human-readable [label]() the schema is meaningless.
    Schema rules mainly refer to questions of [optionality](),
    [prohibition](), [size](), [garbage](), and shapes of [embedding]().
    The schema can also specify which elements to use as an
    [identifier]() and what [derivation]() is to be expected. Rules can
    further be given as, or can be transformed into [derivation]()
    statements.

implied patterns
  ~ The same data element is interpreted differently against different
    schemas. Schemas also contain possible choices and exclusive
    constraints. For both reasons the [flag]() pattern is found in
    virtually any schema.

specialized patterns
  ~ -   [optionality]() to express optional and mandatory parts. In fact
        all schemas include some optionality as degrees of freedom.
    -   [prohibition]() to express constraints.
    -   [garbage]() to express irrelevant and predictable parts.


