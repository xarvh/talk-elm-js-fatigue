module Main exposing (..)

import Slides exposing (..)

main = app
    slidesDefaultOptions

    [ md
        """
        TODO: Title
        """

    , md
        """
        * Guarantees no runtime errors
        * Time-travelling debugger
        * Blah
        * Blah
        * ....
        """


    , md
        """
        The truth is that I struggled to learn the language

        (OOP patterns are kind of useless in FP)
        """


    , md
        """
        So what made me stick with it?

        -> "simpler build pipeline"?
        """


    , md
        """
        Writing Elm was on par with writing Python or JS for Node, nothing exceptional

        Shifting view

            * Elm is not exceptional, just normal
            * It's front end JS that sucks, and there is a name for it
        """


    , md
        """
        JS Fatigue

        or: why I need a 10 page tutorial before I can start actually writing my code
        """



    , md
        """
        Let's step back, reconsider how we are doing things

        """


    , md
        """
        This is what happened with Elm

        -> show minimal program
        """



    , md
        """
        Advantage of having everything 
        """
    ]
