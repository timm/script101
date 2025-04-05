asdas

# What to Brnach


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

