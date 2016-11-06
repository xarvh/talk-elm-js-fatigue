
# Intro
- Rob asked me to talk about Elm
- it's easy to get lost in the fanciness when talking about yet the next new shiny tech
- it's easy to like a new tech because it's fun to use
- but does it actually solve a practical problem?

#
- After years as JS dev, suddenly I was using exclusively a laguage I barely knew
    despite how my lack of skill with functional patterns frustrated me

- The only reason I could think of initially was some incoherent (albeit enthusiastic) mumbling about "simpler build pipeline"

- But eventually I discovered the term I was looking for:

# JavaScript Fatigue

# What!?
https://github.com/verekia/js-stack-from-scratch
12 pages of instruction to wire all the necessary tools together so that we can *start* coding.
This is JS Fatigue
It's not because the tools themselves are bad:
The problem IS MAKING THINGS WORK TOGETHER


#
Maybe it's time to take a step back and reconsider how we do things on the web, break away


# Ok, what about Elm?


#
- minimal example: install elm, dependencies (elm-lang/html), compile directly to html
-> elm-lang/html does the same stuff as React/Redux
-> no need for a third party package manager, transpiler (JSX, ES6), bundler

#
- vs typescript / flow
- you get immutability

- without any type annotation, model defined just by init, nested records, the view tries to access a field with wrong casing: show error message


#
- both are not something patched on top with tape and chewing gum:
    they are an inherent feature of the language and ITS LIBRARIES

- goodbye "cannot read property blah of undefined"
-> sometimes it's a pain, but 1) you save a ton of time because you can write less unit tests 2) you don't have to refactor so aggressively, if it compiles it works.

-> This has a cost, especially if you  are unfamiliar with fp patterns
-> but for that cost, you get this:
https://twitter.com/JuhaKaura/status/791671413526654976


# What about testing?



# ? Elm can be used to replace scass/less/scss







#
The good thing about Elm is that, unlike JavaScript, it is an entire language and ecosystem designed with the modern web in mind.
No need for weird workarounds and 7894213 different tools for doing even basic stuff.

# more stuff: enforced semver, enforced docs, readable names, good libraries, easy to interface with js via ports, time travelling debugger

# what's the catch?
- it's a big change. Don't change unless it solves a problem!
- can't use many of the oo patterns we learned, need to learn new patterns
- young ecosystem, you will need to rely on ports




# in the end
* Elm kills so many of the complexities associated with wiring together the many work-arounds necessary for js
* You can spend much, much less time thinking about tests or about the various tools and how they interact
-> and more time actually developing beautiful interfaces
* Elm is not perfect, and is still very young
* But can be used already, for fun and profit
















