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

[![Watch the video](https://www.youtube.com/embed/ng9m3EGLeTY)

## Actiopms

- Actions in the source control can be assocaited with "hook" that fire on certain events.
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

#
## Centralised vs decentralized

- In a centralised  control system, there is one main repo and many  subordinates.
  - So control remains in the center
- In decentralized control system, there is no center
  - Every fork has as much information as any other
  - So anyone, at anytime, can grab the whole code base and take it elsewhere.


[^estimate]: Tianpei Xia, Wei Fu, Rui Shu, Rishabh Agrawal, Tim Menzies:
[Predicting health indicators for open source projects (using hyperparameter optimization)])https://arxiv.org/pdf/2006.07240.pdf). Empir. Softw. Eng. 27(6): 122 (2022)
[^process]: Majumder, S., Mody, P., & Menzies, T. (2022). 
[Revisiting process versus product metrics: a large scale analysis](https://arxiv.org/pdf/2008.09569.pdf). Empirical Software Engineering, 27(3), 60.
[^early]: SHRIKANTH N.C.and TIM MENZIES, [AssessingtheEarlyBirdHeuristic(forPredictingProjectQuality)](https://dl.acm.org/doi/pdf/10.1145/3583565), ACMTrans.Softw.Eng.Methodology, 2023

