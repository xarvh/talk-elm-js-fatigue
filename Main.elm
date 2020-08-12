module Main exposing (..)

import Slides exposing (md, mdFragments, slidesDefaultOptions)
import Slides.FragmentAnimation as FA
import Slides.SlideAnimation as SA


main =
    Slides.app
        slidesDefaultOptions
        [ mdFragments
            [ """
          Elm as an antidote to front-end fatigue
          =======================================
          """
            ]
        , mdFragments
            [ "**Front-end JavaScript sucks**"
            ]
        , mdFragments
            [ """
          ![Tutorial Header](images/TutorialHeader.png)

          (https://github.com/verekia/js-stack-from-scratch)
          """
            ]
        , mdFragments
            [ """
          ![Tutorial ToC](images/TutorialToC.png)

          *Twelve* pages for a minimalist setup

          100% boilerplate
          """
            ]
        , mdFragments
            [ "Why are we stuck with this?"
            , "➡ Because JavaScript is the only thing that runs on all browsers"
            , "*Is this actually true?*"
            , "The stuff that we *actually* write, does NOT run on all browsers"
            ]
        , mdFragments
            [ "➡ We are building workarounds on top of other workarounds"
            , "Maybe it's time to start from scratch?"
            , "We are compiling anyway, is it worth to stick with JS?"
            ]
        , mdFragments
            [ "## Elm?"
            , "- Purely functional language"
            , "- Strictly typed"
            , "- Guarantees no runtime errors"
            , "- Time-travelling debugger"
            , "- Cures cancer"
            , "- Solves global warming"
            , "- ...yet the *latest* over-hyped tech"
            , "Really worth it? (No, it isn't)"
            ]
        , mdFragments
            [ "So why did I stick with Elm?"
            , "Because Elm tackles the problem from the ground up"
            , "➡ Elm does NOT try to play nice with JavaScript"
            , "^ This of obviously comes with a *cost*"
            , "But it also allows Good Things to happen"
            ]
        , mdFragments
            [ "# Good Thing #1: Simpler build"
            ]
        , md
            """
        Normally we'd have to:

        * Install all dependencies (Bower/npm/Yarn)
        * Syntax check (ESLint)
        * Type check (TypeScript/Flow)
        * Translate from JSX/ES6/Flow (Babel)
        * Bundle (Webpack)

        ➡ All this while trying to recompile only what has changed
        """
        , mdFragments
            [ "# Good Thing #2: Reliable type checking"
            , " ➡ Elm's typechecker is NOT better than Flow"
            , " * You always know that 100% of the code is typechecked"
            , " * This includes ALL third party code"
            , " * The typechecker becomes *reliable*..."
            , " * ...and *fast*"
            ]
        , mdFragments
            [ "# Good Thing #3: Fewer, simpler tests"
            , " * The best test is the one you don't have to write"
            , " * Reliable typechecking prevent most run time errors"
            , " * Every function is pure, no need to set up and tear down..."
            , " * ...or configure a fake browser"
            ]
        , md
            """
        All of this makes front-end dev a *better* experience
        """
        , md
            """
        @xarvh
        """
        ]
