asda

# Short Release Cycles
> Team Pattern

<img width=400 align=right 
src="releaseOfren.png">

From the Linux Kernal Report[^kernel]:

- In the early days of the Linux project, a new major kernel release
only came once every few years. 
  - That meant considerable delays in
getting new features to users, which was frustrating to users and
distributors alike. 
- But, more importantly, such long cycles meant
that huge amounts of code had to be integrated at once, and that
there was a great deal of pressure to get code into the next release,
even if it wasn’t ready.

Short cycles address all of these problems. 
- New code is quickly
made available in a stable release.i
- Integrating new code on a nearly
constant basis makes it possible to bring in even fundamental changes
with minimal disruption. 
- And developers know that if they miss one
release cycle, there will be another one in two months, so there
is little incentive to try to merge code prematurely.

Now some people are nervous about showing their work in public.
One of my Ph.D. student (Xiao Lingg) found that (at least in his data)
there was a marked difference in the release rates of open soruce
and other software [^xiao]:
- The open soruce projects need to attract programmers to their project
  so they release often to garner attention.
- But when reputation and owernership is more important than innovation,
  other kinds of projects release at a slower rate, since they want to
  double and triple check everything before release.

So the real message here is "decide your own rate of releases" but consider
releasing more frequently. Just to motivate that, in the now famous 
"no moot" memo [^moot], Google developers lament  their lose in the deep
learning market once their models got released to the open source community.

> "..the uncomfortable truth is, we aren’t positioned to win this
arms race and neither is OpenAI. While we’ve been squabbling, a
third faction has been quietly eating our lunch."

The memo laments that once their models got subject to rapid releases,
a very large community lent in to improve and speed up those models. So
perhaps there is some value in frequent releases?


[^kernel]: [Linux Kernel Best Practices](https://go.pardot.com/l/6342/2017-10-24/3xr3f2/6342/188781/Publication_LinuxKernelReport_2017.pdf), 2017.
[^moot]:    by Anonymous [Google has no moot](https://www.semianalysis.com/p/google-we-have-no-moat-and-neither), 2023
[^xiao]: X. Ling, R. Agrawal and T. Menzies, ["How Different is Test Case Prioritization for Open and Closed Source Projects?"](https://arxiv.org/pdf/2008.00612.pdf) in IEEE Transactions on Software Engineering, vol. 48, no. 07, pp. 2526-2540.
doi: 10.1109/TSE.2021.3063220, 2022
