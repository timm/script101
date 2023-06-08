asdas

# Use Source Control

From [Gitlab](https://about.gitlab.com/topics/version-control/):

Version control (a.k.a  source control, revision control)
tracks and managing changes made to code and other files. 

- Allows developers to:
  - see entire history of who changed what at any given time 
  -  roll back from the current version to an earlier version if they need to, thus fixing 
     undoing mistables.o
- Co-ordinate the work of many developers:
  - Track comments, and issues and which issues have been resolved.
  - Decide which issues are hadnled by which people
  - Search fix issues (to get a sense of the history of a project)
  - Let someone "branch" the code
    - Work off in their own local copy
    - Then only bring something back if it is working/ worthy of reintegration into the whole.
- A repository stores the whole history of many projects:
  - So researchers and managers can review many projects to learn important patterns in software
    development [^estimate][^process][^early].

## Key concepts

[key concepts](https://www.youtube.com/watch?v=ng9m3EGLeTY)

How many of these terms do you understand? 

- [ ] repository (repo)
- [ ] commit
  - [ ] push
  - [ ] conflict
- [ ] clone
  - [ ] pull
  - [ ] pull request
- [ ] branch
  - [ ] checkout
- [ ] fork
- [ ] branch
- [ ] diffs



## Actiopms

- Actions in the source control can be assocaited with "hook" that fire on certain events.
- So think of all the things you do repeatedly, then ask "how many tof htose could be automated as actions?"
- Here's a list of those events (it is very long). The thing to note here is that the
    repo is not static thing, but an active place where you can store all you tricks and 
    repeated tasks.
  - branch\_protection\_rule
  - check\_run
  - check\_suite
  - create
  - delete
  - deployment
  - deployment\_status
  - discussion
  - discussion\_comment
  - fork
  - gollum
  - issue\_comment
  - issues
  - label
  - merge\_group
  - milestone
  - page\_build
  - project
  - project\_card
  - project\_column
  - public
  - pull\_request
  - pull\_request\_comment (use issue\_comment)
  - pull\_request\_review
  - pull\_request\_review\_comment
  - pull\_request\_target
  - push : trigger a rebuild of the documentation
  - registry\_package
  - release: copy a zip file of the source to some third part site
  - repository\_dispatch
  - schedule
  - status
  - watch: triggered when someone hits "star" or a GH repo
  - workflow\_call
  - workflow\_dispatch
  - workflow\_run

## Centralised vs decentralized

- In a centralised  control system, there is one main repo and many  subordinates.
  - So control remains in the center
- In decentralized control system, there is no center
  - Every fork has as much information as any other
  - So anyone, at anytime, can grab the whole code base and take it elsewhere.

## Gitflow vs Commit to Main

Version control lets you branch but it does not tell you when you should (or should not) branch. That is up to your local policy.
Just to give you an idea of how variable are those policies, here are two very divergent approaches to branching.

### Gitflow

<img src="https://user-images.githubusercontent.com/29195/130552057-1891deda-3328-43c7-8fab-c139cff3d1ff.png" align=right width=300>

- Gitflow: when you are natually suspicious of other people's work
  - Good for large scale, not-so-fast, distributed development
  - branches go away from a long time (weeks, months, years)
  - it is a big deal, high effort when you do a pull request on that brnach (lots of effort accepting much that is strange and wonderful
    from outsiders)
  - Good when
    -  When you run an large, slow open-source project.
       - Everyone can contribute
       - You’ll need to be able to check every single line of code, 
          - because well you can’t trust people contributing.
    - When you have a lot of junior developers.
       - you want to have a way to check their work closely
    - When you have an established product.
      - So branches are small changes, bounded by something much larger
  - Not so good when
    - When you are just starting up.
      - Chances are you want to create a minimal viable product quickly. 
      - Doing pull requests creates a huge bottleneck that slows the whole team down dramatically
    - When you need to iterate quickly. 
    - When you work mostly with senior developers
      - Who mostly don’t mess things up
  - And  beware gitflow hell.

###  Commit to main:

(used at Google,Facebook, Amazon: https://trunkbaseddevelopment.com)

Developers collaborate on code in a single branch called “trunk” (\*), resist any pressure to create other long-lived development branches. Avoids merge hell, do not break the build, and live happily ever after.

(\*) master, in Git nomenclature

Very short lived feature branches: one person over a couple of days (max). Much build automation before merging into main

When is best for you? Merge hell or trunk-based? You decide. Compare this to above:

<img src="https://user-images.githubusercontent.com/29195/130552521-4bef7f5a-b861-4f9a-947c-32e9b6aadf70.png" width=300>

XXXX
Zenodo doi badge
https://zenodo.org/account/settings/github/

from https://academia.stackexchange.com/questions/161399/sharing-research-related-codes-and-datasets-split-them-or-share-them-together

However, GitHub isn't designed to ensure the permanence of the hosted repositories. For example, one can always entirely remove a repository through GitHub's interface and also delete or modify old code with a Git force push. In the longer term, we can't know that the company controlling GitHub (it used to be GitHub, now it's Microsoft) will continue to operate it in a way that serves science. Consider how many corporate products and services have disappeared or changed tack over the past twenty years, even things coming out of large established companies, such as Google (check this list) or Sun Microsystems after it got acquired by Oracle (Java and Solaris licensing).

Consequently, for a better guarantee of your work's permanence and availability to future scientists you should also put your data and code on a scientific data repository, such as Zenodo. This will associate a DOI with your deposited artifacts, which will permanently link to the corresponding version. (Once you upload something to Zenodo, there's almost no possibility to undo the action.) GitHub and Zenodo even offer you the ability to archive a specific GitHub version to Zenodo.

If the volume of the data is large or it is likely to be often used on its own, then split it from the code, and upload each on Zenodo as a separate dataset. Zenodo allows you to link the two (and also the GitHub repository) with the "Related Identifiers" metadata. You can use the Compiles and Compiled by identifiers for linking code with data, and the Supplement to identifier to link your GitHub repository.

For an example of a split associated with a large dataset consider this dataset regarding the lifetime of code lines (3.7GB), the associated software, and the software's GitHub repository. For example of a split associated with an independently usable dataset consider this list of repositories created by enterprises and the associated replication package.

If the volume of the data is modest, it's fine (or perhaps better) to combine the two in a single Zenodo upload, as is the case in this package regarding the completion of Wikipedia links.

but then its not a decison of one verus the other. store in GB the auto lonk to zendo

[^estimate]: Tianpei Xia, Wei Fu, Rui Shu, Rishabh Agrawal, Tim Menzies:
[Predicting health indicators for open source projects (using hyperparameter optimization)])https://arxiv.org/pdf/2006.07240.pdf). Empir. Softw. Eng. 27(6): 122 (2022)
[^process]: Majumder, S., Mody, P., & Menzies, T. (2022). 
[Revisiting process versus product metrics: a large scale analysis](https://arxiv.org/pdf/2008.09569.pdf). Empirical Software Engineering, 27(3), 60.
[^early]: SHRIKANTH N.C.and TIM MENZIES, [AssessingtheEarlyBirdHeuristic(forPredictingProjectQuality)](https://dl.acm.org/doi/pdf/10.1145/3583565), ACMTrans.Softw.Eng.Methodology, 2023

