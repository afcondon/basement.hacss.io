let html-parser-halogen =
      { dependencies = [ "string-parsers", "halogen" ]
      , repo =
          "https://github.com/rnons/purescript-html-parser-halogen.git"
      , version = "v1.0.0-rc.2"
      }

let overrides = {=}

let additions =
      { html-parser-halogen
      }

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.3-20210825/packages.dhall sha256:eee0765aa98e0da8fc414768870ad588e7cada060f9f7c23c37385c169f74d9f
  with hacss =
    { dependencies =
      [ "effect"
      , "foreign-object"
      , "newtype"
      , "nullable"
      , "profunctor-lenses"
      , "string-parsers"
      , "js-uri"
      ]
    , repo = "https://github.com/afcondon/core.git"
    , version = "0.14.3"
    }

in  upstream // overrides // additions
