



# JavaScript has many problems, and many solutions

Is the problem "too many solutions"?

Learning CoffeeScript was a breeze.

The problem came when I had to make Karma/Browserify/Istanbul work with Coffee.






# JavaScript fatigue

My take is that JS Fatigue is not about *learning* new technologies.

We are devs, we go to conferences, we are suckers for new shiny things.

The problem is not *learning* too many things too often.
**The problem is making these things work together**




#
The good thing about Elm is that, unlike JavaScript, it is an entire language and ecosystem designed with the modern web in mind.



# Show base application
```
import Html

main =
    Html.text "Hello World, you are beutiful!"
```


# Show
```
import Slides exposing (..)

main =
    program
        Slides.default
        ...
```


# Embed slide inside slide





# Runtime errors:
No need for typescript

example without any type annotation: show that elm compiler complains about a typo

`cannot read property xxxxx of undefined`
`undefined is not a function`
`assert` everywhere
https://twitter.com/JuhaKaura/status/791671413526654976



# ? Elm can be used to replace scass/less/scss






# in the end
* Elm kills so many of the complexities associated with wiring together the many work-arounds necessary for js
* You can spend much, much less time thinking about tests or about the various tools and how they interact
-> and more time actually developing beautiful interfaces
* Elm is not perfect, and is still very young
* But can be used already, for fun and profit



















or: _How many languages, tools and libraries do we need before we can start writing a non-trivial web app?_

languages: Html (, Css



Es6/7/Babel
Webpack/Gulp/Grunt
Angular/React/Reduc/Flux
Mocha/Sinon/Karma
lodash/jquery



















# Let's go back to 1995
[image of W95]
? ()[https://cdn.theatlantic.com/assets/media/img/photo/2015/08/twenty-years-ago-this-week-a-look-b/a01_RTXFTIC/main_1500.jpg]
Uh, maybe not


# ..Let's go back to *when JavaScript was designed*
Knowing what we know today, what different design choices would we make?

How would JS look like if it was designed with the modern web in mind?



* modules and dependencies!
This is why we use:
    bower/npm to get the packages
    browserify/webpack/_es6 import_ to glue them together













. What would we want









* js "as it is" is not very good and manipulating information, usually we'll use lodash
* lodash from CDN a) is in the global scope and b) needs to load from the www, with all the limits this entails (load time, no offline availability)
* Ok, so let's use it as a package. -> we need a package manader. and a bundler -> we need a build manager
* -> we need our test tool to be aware of all of these





