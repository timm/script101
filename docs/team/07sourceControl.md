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


## Centralised vs decentralized

- In a centralised  control system, there is one main repo and many  subordinates.
  - So control remains in the center
- In decentralized control system, there is no center
  - Every fork has as much information as any other
  - So anyone, at anytime, can grab the whole code base and take it elsewhere.

## Version Control is not enough

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

