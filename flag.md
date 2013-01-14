alias
  ~ Choice, exclusion.

idea
  ~ The interpretation of a data element is controlled by another
    element.

context
  ~ At least two data elements, one acting as switch, the other as
    target.

motivation
  ~ Flags allow to easily add or enrich interpretations and to resolve
    ambiguity.

implementations
  ~ -   One value from a list of possible values ([encoding]()).
    -   A default value ([void]()) which can be overridden.
    -   Markup to turn flags on and off, for instance `<b>bold</b>`.
    -   An [identifier]() in a key-value record structure.
    -   An [embedding]() that shows which elements are switches and
        which elements are targets.

examples
  ~ -   The bit as basic unit of all digital data is a choice between
        two possible values. It can be encoded by `0` and `1`, by a
        given value and absence as default.
    -   Boolean and enumerated data types with type as switch and
        instance variable as target.
    -   An exclusive-or constraint in a schema to enforce choice of one
        possibility.
    -   A qualified value such as "Dublin, Ohio".
	-	The statement "license: CC-BY-SA" in contrast to "CC-BY-SA" only.
    -   Annotations that modify interpretation, such as uncertainty and
        temporal flags.
    -   General rules how to read a data element ([schema]()).
    -   A namespace is a flag that gives context to local identifiers.

difficulties
  ~ -   Possible values of the switch must be clear. If the first
        element is ambiguous, interpretation of the target element will
        also be.
    -   Default values are not always known or different values are
        assumed.
    -   Some flags don't have an independent interpretation, for
        instance the value "miscellaneous" in a classification.
    -   In practice flags are created or extended ad-hoc, for instance
        as additional annotation or as additional switch value to add
        more interpretations.
    -   A flag may switch more then one element and an element may be
        influenced by a combination of flags. It should be made clear,
        what elements a flag refers to,
    -   Some flags allow nesting (for instance a qualifier of a
        qualifier), others do not make a difference when nested
        (`<b><b>...</b></b>` is simply bold).

related patterns
  ~ -   Most flags are based on a [dependence]() between switch and
        target element.
    -   Instead of exclusion one could also disallow specific
        combinations of elements [prohibition]().
    -   A [separator]() such as '`:`' can simultaneously indicate a
        flag.
    -   The target data element may not be usable without the flag. In
        this case, a third element is derived from flag and target
        ([derivation]()).
    -   If the switch consists of conditions which must be met to make
        use of the target element, a [schema]() is more appropriate.

implied patterns
  ~ A flag is a form of [derivation]() as the target's interpretation is
    implied by the switch.

specialized patterns
  ~ A [schema]() defines which choices and exclusions are possible for
    some data elements. Schemas can further act as flags by telling how
    to read data.


