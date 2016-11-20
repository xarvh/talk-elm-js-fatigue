import Slides exposing (md, mdFragments, slidesDefaultOptions)
import Slides.SlideAnimation as SA
import Slides.FragmentAnimation as FA

import Css exposing (..)
import Css.Elements exposing (..)


blur completion =
    "blur(" ++ (toString <| Basics.round <| (1 - completion) * 10) ++ "px)"


verticalDeck : SA.Animator
verticalDeck status =
    Css.asPairs <|
        case status of
            SA.Still ->
                [ Css.position Css.absolute
                ]

            SA.Moving direction order completion ->
                case order of
                    SA.LaterSlide ->
                        [ Css.position Css.absolute
                        , Css.property "z-index" "1"
                        , Css.property "filter" (blur completion)
                        , Css.property "-webkit-filter" (blur completion)
                        ]

                    SA.EarlierSlide ->
                        [ Css.position Css.absolute
                        , Css.transform <| Css.translate2 zero (pct (completion * 100))
                        , Css.property "z-index" "2"
                        ]



betterFade : FA.Animator
betterFade completion =
    Css.asPairs
        [ Css.opacity (Css.num completion)
        , Css.property "filter" (blur completion)
        , Css.property "-webkit-filter" (blur completion)
        ]


font =
    px 20

bgColor =
    rgb 255 255 255

codeBgColor =
    rgb 230 230 230

txtColor =
    hex "60B5CC"

elmBlueOnWhite : List Css.Snippet
elmBlueOnWhite =
    [ body
        [ padding zero
        , margin zero
        , height (pct 100)
        , backgroundColor bgColor
        , color txtColor
        , fontFamilies [ "calibri", "sans-serif" ]
        , fontSize font
        , fontWeight (int 400)
        ]
    , h1
        [ fontWeight (int 400)
        , fontSize (px 38)
        ]
    , section
        [ height (px 700)
        , width (pct 100)
        , backgroundColor bgColor
        , property "background-position" "center"
        , property "background-size" "cover"
        , displayFlex
        , property "justify-content" "center"
        , alignItems center
        ]
    , (.) "slide-content"
        [ margin2 zero (px 90)
        ]
    , code
        [ textAlign left
        , fontSize font
        , backgroundColor codeBgColor
        ]
    , pre
        [ padding (px 20)
        , fontSize font
        , backgroundColor codeBgColor
        ]
    , img
        [ width (pct 100)
        ]
    ]



main = Slides.app
    { slidesDefaultOptions
        | style = elmBlueOnWhite
        , slideAnimator = verticalDeck
        , fragmentAnimator = betterFade
    }

    [ md "**Elm as an antidote to front-end fatigue**"

    , mdFragments
        [ "**Why Elm?**"
        , "- Guarantees no runtime errors"
        , "- Time-travelling debugger"
        , "- blah blah blah"
        , "- blah"
        , "- yet the *latest* over-hyped tech"
        , "- ... "
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
            """
            Exibit A
            """
        ,   """
            ![Tutorial Header](images/TutorialHeader.png)

            (https://github.com/verekia/js-stack-from-scratch)
            """
        ]

    , mdFragments
        [
            """
            ![Tutorial ToC](images/TutorialToC.png)
            """
        ,   """
            **Twelve** pages for the **minimalist setup**...
            """
        ,   """
            ...that's before you can actually **start** writing actual code.
            """
        ]

    , mdFragments
        [ "JavaScript definitions:"
        , """a) "The only language that runs on all browsers" """
        , """b) "A jumble of stuff we use to build code that runs on all browsers" """
        ]

    , mdFragments
        [   """
            We are passing from one language to another.
            """
        ,   """
            Maybe it's time to take a step back and reconsider what we're doing?
            """
        ]

    , md
        """
        This is what happened with Elm

        -> show minimal program

        -> list all build passages that in JS we'd have to do:
            - Install all dependencies (Bower/npm/Yarn)
            - Syntax check (ESLint)
            - Type check (TypeScript/Flow)
            - Translate from JSX/ES6/Flow (Babel)
            - Bundle (Webpack)
        -> all while trying not to recompile stuff that hasn't changed
        """

    , md
        """
        ![build pipeline](build-pipeline.png)
        """
        --         -> These are the libs I want to use, this is my code, give me something I can use already
        --             (very similar to python, node, c

    , md
        """
        Is Elm typechecker better than, say, Flow?
        -> No, Elm type checker is enforced on *all* APIs
        1. In Flow, you are never 100% sure whether something has been annotated or not
        2. In Flow, you often don't have annotation for third party code (Hello Relay!)
        3. It's not like Flow is not good, it is great, but it is limited to what something "added afterwards" can do
        """
    , md
        """
        Example of a unit test
        """
    , md
        """
        I'm done.
        Yes, this presentation is short, but isn't it kind of the whle point?
        """
    , md
        """
        @xarvh
        """
    ]
