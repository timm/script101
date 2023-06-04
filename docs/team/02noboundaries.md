asda

# No Internal Boundadies
> Team Pattern

The kernel of the Linux operation system is a unique piece of software. Used continually
around the world and maintained
for decades, it represents the combined work of thousands of developers.


<img align=right width=400 
src="https://user-images.githubusercontent.com/29195/129657782-3b32c13e-6283-4812-9d49-3cf1c062820d.png">


It is interesting and insightful to ask how could one piece of software, written by so many people, could be so successful.
When that question is posed to the Linux core development team, they have several answers 
(shown at right) including "no internal boundaries".

According to their report[^kernel], no iternal boundaries works like thos:

- Developers are necessarily focused on specific parts of the project, 
- But any developer can make a change to any part of the project if the change can be justified. 
- As a result
  - problems are fixed where they originate rather than being worked around
  - developers have a wider view of the kernel as a whole, 
  - and even the most recalcitrant maintainer cannot indefinitely stall needed progress in any given subsystem.

One way to get an impression whether or not a project has "no itnernal boundaries"
is see how many project files (including config files) are changed now often by how many people.
If only one person ever changes the build control files, then that would strong;y suggest that
a project has imposed tight restrictions over who can run a build.  

## Exercises
- What might do wrong/right with some/no internal boundaries?
- Think of coding practices that would create itnernal boundaries.
- Are there any circumstances under which you might decide to ignore this pattern and impose internal boundaries?

[^kernal]: [Linux Kernel Best Practices](https://go.pardot.com/l/6342/2017-10-24/3xr3f2/6342/188781/Publication_LinuxKernelReport_2017.pdf), 2017.

