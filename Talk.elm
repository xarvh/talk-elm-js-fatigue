module Main exposing (..)

import Slides exposing (..)

main = app
    slidesDefaultOptions

    [ md "Elm as an antidote to front-end fatigue"

    , mdFragments
        [ "**Elm**"
        , "- Guarantees no runtime errors"
        , "- Time-travelling debugger"
        , "- blah blah blah"
        , "- blah"
        , "- yet the *latest* over-hyped tech"
        , " ... "
        ]

    , mdFragments
        [ "The truth is that learning the language was not easy"
        , "(OOP patterns aren't really useful in FP)"
        , "(Also I'm lazy)"
        ]

    , mdFragments
        [ "So why stick with Elm?"
        , "**Because front-end JavaScript sucks**"
        ]

    , mdFragments
        [
            -- show tutorial
            --         """
            --         JS Fatigue
            -- 
            --         or: why I need a 10 page tutorial before I can start actually writing my code
            --         """
        ]

    , mdFragments
        [ "JavaScript definitions:"
        , "1. The only language that runs on all browsers"
        , "2. A jumble of stuff we use to build code that runs on all browsers"
        ]

    , md
        """
        let's rethink stuff
        we are compiling anyway
        """

    , md
        """
        This is what happened with Elm

        -> show minimal program

        -> list all build passages that in JS we'd have to do:
            - dependency installation
            - syntax check (usually via linting)
            - type check
            - packaging
            - translation from JSX/ES6/Flow
            - bundling
            - (all while trying not to recompile stuff that hasn't changed)
        """

    , md
        """
        Integrated type safety
        -> example with no type declarations
        """
    ]
