# Matthew Schlegel's thesis

This is the source for my thesis written in org mode. Feel free to use it as a template for your own thesis. More details to come.


## Work time

I'm measuring how many hours I work on my thesis over time. This is stored as a markdown table in work-time.md. I'm hoping to use this to better guage how things are going, and get insight into what/where I'm working (on) the most.

Regexp in emacs to replace cites with org-ref citations.

`\\\(cite[a-zA-Z]*\){\(\([^}]+[, ]*\)\)+} → \1:&\,(s-replace ", " ";&" \2)`
