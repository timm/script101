asda

# No Regressions

> Team Pattern



From the Linux Kernel Report[^kernel]:

<img src="backsies.jpeg" align=right>

- If  software works in a specific setting, all subsequent versions
must work there, too. 
- The implementation of this rule is not always
perfect, but it still gives users assurance that upgrades will not break
their systems.
- As a result, they are willing to follow the kernel as it
develops new capabilities

In practice, this rule can be tough to follow. Sometimes you make some initial decision abut a project that plagues you for the rest of that project.
But  unless "no regressions" is adhered too, then all your [short release cycles](04releaseOften.md)
may got to waste since your stakeholders are reluctant to install the latest and greatest
version of your software.

## Exercise:
- Do the following twice
  - Imagine some project that makes an important initial decision, which developers then regret,
    but what we must suffer through till the end of that project.
  for the presence (or otherwise) of distributed development?

(And for examples where other people have lamented decisions, see 
"Was The Windows Registry a Good Idea?" [^registry]
and "The Diamond Problem" [^diamond]).


[^diamond]: [The Diamond Problem](https://en.wikipedia.org/wiki/Multiple_inheritance#The_diamond_problem)
[^kernel]: [Linux Kernel Best Practices](https://go.pardot.com/l/6342/2017-10-24/3xr3f2/6342/188781/Publication_LinuxKernelReport_2017.pdf), 2017.
[^registry]: [Was The Windows Registry a Good Idea?](https://blog.codinghorror.com/was-the-windows-registry-a-good-idea/)

