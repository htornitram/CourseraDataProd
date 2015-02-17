Success Percentage Target Calculator
========================================================
author: Coursera "Developing Data Products" course project
date: February 2015

Overview
========================================================

The Success Percentage Target Calculator helps you reach your goals! 

- Put in your target success percentage and your record of attempts and successes so far
- The SPTC Server does its calculations behind the scenes in almost no time at all
- You find out exactly what you need to do to get to your target!

It's a web application driven by R and shiny, at what many would call the cutting edge of technology.

Example
========================================================

Suppose you've made a small wager that your favorite football team will win 60% of its games this year, but they've won only 5 of their first 12. You can learn that they need a consecutive string of

```r
needs <- function(goal, att, succ) {
     ceiling(((goal*att)-succ)/(1-goal))
}
paste(needs(60/100, 12, 5), "success(es)")
```

```
[1] "6 success(es)"
```

If that's more games than they have left to play, you can consider the possible damage to your bank account, your kneecaps, or simply your pride, and plan your escape.


More Ways to Use SPTC
========================================================

Sports!
- Want to know how many hits you need to reach that elusive .300 batting average? This is your tool!

Politics!
- Need to find out how many ballots you need to stuff into boxes to get your desired margin of victory? <small>Wait, no, that's unethical and usually illegal...</small>

Gambling!
- <small>Er, not that we're encouraging gambling in any case. Quite the opposite.</small>

And many more!

Get Started!
========================================================

<br />
## Just go to 

<br />
## http://htornitram.shinyapps.io/SPTC

<br />
## And start meeting your success percentage goals today!
