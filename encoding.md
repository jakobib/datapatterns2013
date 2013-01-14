alias
  ~ Abstraction.

idea
  ~ Data that stands for something else.

context
  ~ Any data element.

motivation
  ~ Hide complexity and irrelevant details.

implementations
  ~ One must define a mapping between each of the elements to be encoded
    and their particular encoding forms. The definition can make use of
    a [schema]().

examples
  ~ -   Unicode defines which characters exist and how to express them.
    -   The bit sequence `111000101010000010100001` in bytes encodes the
        sequence `E2 A0 A1` in UTF-8 encodes the Codepoint `U+2821` in
        Unicode 3.0 encodes the character `BRAILLE PATTERN DOTS-16` in
        Swedish Braille encodes the character `Á`.
    -   Markup languages encode characteristics of text elements, for
        instance `<b>...</b>`, or `**...**` for bold.
    -   MARCXML encodes MARC21 in XML.
    -   APIs abstract from internal data expressions (for instance SQL)
        to public, encoded form (for instance in JSON or XML).
    -   Virtual file systems abstract from different file system access
        methods.
    -   Encoding allows mapping between entities and connections and
        between objects and documents by reification, objectification,
        and stringification.
    -   Different serialization forms of RDF define encodings of RDF
        graphs.
    -   When a specification of some data format talks about a relation
        between syntax and semantic, it usually refers to an encoding.

difficulties
  ~ -   An encodings is an arbitrary result of social convention: one
        could modify it (for instance replace angle brackets by square
        brackets in all specifications and instances of XML) but actual
        changes are difficult.
    -   Encodings can also add redundancy.
    -   The existence and use of an encoding does not ensure that
        complexity and details are actually hidden.
    -   Most encoded data elements are encodings by their part, leading
        to a chain of encodings (unlimited semiosis).
    -   Encodings are not always one-to-one or reversible at all.
    -   Encodings only translate from one form of data to another, but
        the selection of a particular encoding can also be relevant
        data.
    -   Any data structuring language can encode any other language by
        introducing additional rules or constraints, so the particular
        encoding system may not add any value.

related patterns
  ~ -   [Atomicity]() does also aim at reducing complexity.
    -   An encoding can also be used as specification ([schema]()) and
        as [normalization]().
    -   [Embedding]() is an alternative to encoding if the relation
        between data elements more depends on its actual context.
    -   Encoding seems to bridge the semiotic gap between signifier
        (encoding form) and signified (encoded data element). The common
        view of encodings as 'semantic', however, hides the fact that
        encodings must be accompanied by the [label]() pattern to make
        sense.

implied patterns
  ~ -   An encoding implies a set of [identifier]() but the latter does
        not include the idea of expressing something at another level.
    -   Given a full encoding, the referent can automatically be
        determined ([derivation]()).

specialized patterns
  ~ [Normalization]() implies encoding.


