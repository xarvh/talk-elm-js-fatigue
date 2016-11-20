import Slides exposing (md, mdFragments, slidesDefaultOptions)
import Slides.SlideAnimation as SA
import Slides.FragmentAnimation as FA

import Css exposing (..)
import Css.Elements exposing (..)


blur completion =
    "blur(" ++ (toString <| Basics.round <| (1 - completion) * 20) ++ "px)"


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
    px 50

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
        , fontSize (px 70)
        ]
    , section
        [ height (pct 100)
        , width (pct 100)
        , backgroundColor bgColor
        , property "background-position" "center"
        , property "background-size" "cover"
        , displayFlex
        , property "justify-content" "center"
        , alignItems center
        ]
    , (.) "slide-content"
        [ margin2 zero (pct 10)
        ]
    , code
        [ textAlign left
        , fontSize font
        , backgroundColor codeBgColor
        ]
    , pre
        [ padding (pct 20)
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
        , slidePixelSize = { width = 1600, height = 900 }
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

    , mdFragments
        [   """
            **Elm rethinks the problem from the ground up**
            """
        ,   """
            *This allows a lot of good things to happen*
            """
        ]

    , md
        """
        Let's see a fully scalable build
        """
        -- This is very similar to what I'd do in the back end
        -- There is no equivalent of js fatigue in node (or python, or ruby for that matters)

    , md
        """
        Normally we'd have to:

        - Install all dependencies (Bower/npm/Yarn)
        - Syntax check (ESLint)
        - Type check (TypeScript/Flow)
        - Translate from JSX/ES6/Flow (Babel)
        - Bundle (Webpack)

        ➡ All this while trying to recompile only what has changed
        """

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
        Yes, this presentation is short, but isn't it kind of the whole point?
        """
    , md
        """
        @xarvh
        """
    ]
