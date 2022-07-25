{ name = "purescript-deku"
, dependencies =
  [ "arrays"
  , "bolson"
  , "control"
  , "effect"
  , "fast-vect"
  , "filterable"
  , "foldable-traversable"
  , "foreign-object"
  , "heterogeneous"
  , "hyrule"
  , "maybe"
  , "monoid-extras"
  , "newtype"
  , "ordered-collections"
  , "prelude"
  , "profunctor"
  , "quickcheck"
  , "record"
  , "refs"
  , "safe-coerce"
  , "st"
  , "strings"
  , "transformers"
  , "unsafe-coerce"
  , "web-dom"
  , "web-events"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
