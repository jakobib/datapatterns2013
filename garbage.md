alias
  ~ Irrelevant, random, null.

idea
  ~ Some data should better be ignored.

context
  ~ Any data element can act as garbage.

motivation
  ~ Garbage elements can act as placeholder for unknown or irrelevant
    values, as padding to align with specific sizes, or for obfuscation.

implementations
  ~ -   Explicitly mark a data element as garbage by some [flag]().
    -   Use a special data element that acts as [identifier]() to
        garbage, such as the "lorem ipsum" placeholder text.

examples
  ~ -   Additional whitespace if it is used only to support readability 
        without adding any informational content.
    -   Special sample values such as "foo", "bar", "lorem impsum".
    -   Special values such as `/`, `n/a`, `-`, `xxx`, `9999` to
        actually indicate no value.
    -   NULL values in databases and data structuring languages.
    -   Position of unordered elements serialized in an sequence.
    -   Temporary identifiers such as blank node identifiers in RDF.

counter examples
  ~ The empty string and the numerical value zero can be used as garbage
    elements but they are not more natural as garbage than other values.

difficulties
  ~ -   Without additional context it is hard to tell whether data is
        garbage or whether it only happens to look like irrelevant data.
    -   Even garbage indicates something: at least the fact that the
        garbage data element is missing, inapplicable, or should be
        ignored for some other reason. The specific reason, however, is
        rarely indicated by garbage elements. Proposals to differentiate
        kinds of null values contradict the original idea of garbage
        elements to be ignorable.
    -   Garbage elements can be introduced against the original purpose
        of a [schema]() to allow [optionality]() where no support of
        optionality was intended. For instance obviously wrong names and
        email addresses are found if these fields are mandatory.

related patterns
  ~ -   While garbage is explicit data that has no content, instances of
        the [void]() pattern have content without explicit data.
    -   Data that cannot be interpreted as referring to other data may
        also be a [label]() instead of garbage. Eventually all labels
        are meaningless to a computer.
    -   Irrelevant data has no internal structure, so [atomicity]() is
        often implied. Atomicity is also an alternative pattern if it
        turns out that the data is not fully irrelevant.
    -   Garbage is often used as [separator]() which does not need to
        have a value of its own.

implied patterns
  ~ A [schema]() should define the context in which a data element is
    garbage or not.


