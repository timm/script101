# Intelligent Software Scripting: from A to Z


<table>
  <tr><td><h2>Misc</h2></td>
          <td><h2>Project</h2></td><td>
          <td><h2>Code</h2></td><td>
          <h2>Python</h2></td>
  </tr>
  <tr>
    <td><!--- misc--->
     <h3>Security</h3>
      <dl> 
        <dt><a href=#BEI>BEI</a></dt><dd>Beware eval input.</dd>
      </dl>
      <hr>
    </td><td> <!--- Project --->
    </td><td> <!--- Code --->
      <dl> 
        <dt><a href=#ARCH>ARCH</a></dt><dd>Architecture, matters.</dd>
      </dl>
    </td><td> <!--- python --->
    </td>  
  </tr>
</table>


## Glossary


### A
#### <a name=ARCH></a>ARCH: Architecture, matters

<img align=right width=500 src="https://ares.decipherzone.com/blog-manager/uploads/ckeditor_Types%20of%20Software%20Architecture%20Patterns.png">

Informally, architectires divide up big projects such that teams, or people, can work productilvy on their own bits while also playing well with others. 

More formally, says Wikipedia, Software architectures are the set of structures needed to reason about a software system and the discipline of creating such structures and systems.  There are many kinds of architectures (see figure
at right at some notes from the DecipherZone[^Arch1].

Examples:  
- [Blackboards](#BLACKBOARDs)
- [Layers](#LAYERs) 
- [Pipes](#PIPEs)
- etc. 

One important feture about archtectures is thata  reflecting on architectureal choices is a great way to reflect on large scale options in your system. For example,  the famous Keyword in Context[^Parnas72] example explores
the following requirement:

- The KWIC [Key Word in Context index system accepts an ordered set of
lines, each line is an ordered set of words, and each word is an ordered
set of characters. Any line may be ``circularly shifted'' by repeatedly
removing the first word and appending it at the end of the line. The
KWIC index system outputs a listing of all circular shifts of all lines in
alphabetical order.
- Garlan and Shaw[^Garlan92] explore four different designs (listed below) and score them as per the following table. 
  For details on that discussion, see their text.
  - _Shared memory_: This is a classic "procedural design" where the functionality is divided hierathically and all functions can read/write to same 
     shared memory.
  - _Abstact  data types_: This is the classic "object-oriented design" where each module has an interface offering services to anyone that wants them by invoking procedures in that interface.
  - _Events_: all services watch the data and are implicitedly triggered when certain parts of the data change in specific ways (for example,
the act of adding a new line to the line storage causes an event to be sent to the
shift module)
  - _Pipes and Filters_: Data runs in a linear way through a set of small filters (and the output of one
    filter is the input to the next). 

 Criteria  | How="shared memory"    | How="abstract data types" | How="Events" | How="Pile and Filter"
----------:|:----------------------:|:--------------------------:|:--------------:|:---------------:
Change in algorithm? |      -       |                -           |        +       | +
Change in data representation?| -   |         +                  |    -           |-
Change in function? |      +        |         -                  |      +         | +
Performance         |      +        |         +                  |        -       |-
Ruse                |      -        |         +                  |          -     | +

You may disagree with some of these rankings (and to explore that, we would have to read in detail their text).
But stepping back from the details, I say that the important part  of archiectures  is that they make us ask the following questions:

- How often do you reflect on **multiple** designs before selecting one?
- Are you knowledgable in multiple architectures?
- What are your rules for selecting one architeture over another?

For a detailed discussion on the last points, see [non-functional requirements](#NFR)
Models of choices: softare product lines.

Note that once we have choices, we can explore those choices manually our automatically with [configuration](#CONFIG) algorithms.

#### <a name=AUTO></a>AUTO: Automate Everything (as mucha s you can)

idioms, alias, scripts, make, tests 

auto Make on commit. 


### B
#### <a  name=BEI></a> BEI: Beware evil input
Never accept unfiltered text from outside the program (since it may contain evils strings) and **never**  evaulated raw text. Instead, build yourself a parser that only accepts the (very limited) ranges of things you   except   (and reqjects everything else). </p>

In Python, that is already available in the  **ast.literal\_eval** function. This function will convert strings into booleans, integers, floats, and even strings (if appropriate)  while crashing on everything else.</p>

### C
#### <a name=CONFIG></a>Configuration Algorithms
iasd

### L
#### <a name=LAYERs></a>LAYERed Architectures
iasd

### N
#### <a name=NFRs></a>Non-Fucntional Requirements

Different project stakeholders have differernt requirements for the program. 

<img width=600 src="https://user-images.githubusercontent.com/29195/192363050-f2a2b95b-008e-492d-8950-0ee6afb66398.png">
 

Note only that, by stakeholders assess their code on a range of criteria, not all of which everyone
agrees on, and not all of which can be achieved at the same time:

<img width=600 src="https://user-images.githubusercontent.com/29195/192363236-44801242-d8de-4e38-aabe-11363fd41593.png">


We all these criteira "non-functional requirements": 

- properties, or qualities, that the product must have • may be critical to the product’s success
-  here is a partial list of NFRs:


|Quality attribute|	Key interest|
|-----------------|-------------|
|Availability|	Can I use the system when and where I need to?|
|Conformance to standards |	Does the system comply with all applicable standards for functionality, safety, communication, certification, and interfaces?|
|Efficiency	|Does the system use computer resources economically?|
|Installability|	Can I easily install, uninstall, and reinstall the system and upgrades?|
|Integrity	|Does the system protect against data inaccuracy, corruption, and loss?|
|Interoperability	|Does the system connect well with others to exchange data and services?|
|Maintainability	|Can developers easily modify, correct, and enhance the system?|
|Performance|Does the system respond sufficiently quickly to user actions and external events?|
|Portability|	Can the system be migrated to different platforms easily?|
|Reliability|	Does the system run when it’s supposed to without failing?|
|Reusability	|Can developers reuse portions of the system in other products?|
|Robustness|	Does the system respond sensibly to erroneous inputs and unexpected operating conditions?|
|Safety|Does the system protect users from harm and property from damage?|
|Scalability	|Can the system easily expand to accommodate more users, data, or transactions?|
|Security|	Does the system protect against malware attacks, intruders, unauthorized users, and data theft?|
|Usability	|Can users easily learn how to use the system to accomplish their tasks?|
|Verifiability	|Can testers determine whether the software was implemented correctly?|


<img src="https://user-images.githubusercontent.com/29195/192363287-827dd70c-cce0-4beb-a2a8-16c595ce3ddc.png" width=7-- align=right>

Note that these NFRs mention factors, some of which can be measured:

- Time
  -  Transactions / sec
  -  Response time
  -  Time to complete an operation
- Space
  -  Main memory
  -  Auxiliary memory -  (Cache)
- Usability
  -  Training time
  -  Number of choices -  Mouse clicks
- Reliability
  -  Mean time to failure -  Downtime probability -  Failure rate
  -  Availability
- Robustness
  -  Time to recovery
  -  % of incidents leading to
  catastrophic failures
  -  Odds data corruption after failure
- Portability
  -  % of non-portable code
  -  RunsonNoperatingsystems -  Runs on desktop, tablet, mobile
- Etc
  
Column effects row

 - optimizing for effeciency (col2) hurts lots of things (row3 to row8)
 - reliabillity (col8) helps avialbility (row1) 
 - availability (col1) helps maintainability (row6) and reliability (row8)
   - but maintainability (col6) says nothing about a availabilty (row1)
 - maintainability hurts portability (in this project)
   - but portability does nothing to maintainability (no, I don't know why either)
  
![image](https://user-images.githubusercontent.com/29195/192589531-be8abcb9-2a2a-4980-8ccb-c0ace4ef471d.png)

 (Note that the  rules are only approximate and may not hold for specific projects.)
 

### P
#### <a name=PIPEs></a>Pipe and Filter

## Exerices


1. The [Architectures](#ARCH) section described many kinds of software architectures (in that text and also
  from some excellent notes in the DecipherZone[^Arch1]. How many more do you know? For each, offer an example of a kind of applications that **should** and **should not** use that architecture.

1. Reflect over the table at the end of [Non-Functional Requirements](#NFRs). How many cells can you find where  you disagree with the rating (for a particular kind of software). Write down that kind of software and what rating they require in those cells.
 

## References

[^Arch1]: https://www.decipherzone.com/blog-detail/software-architecture-patterns-type

[^Garlan92]: David Garlan and Mary Shaw. ["An Introduction to Software Architecture"](https://userweb.cs.txstate.edu/~rp31/papers/intro_softarch.pdf)  Advances in Software Engineering and Knowledge Engineering, Volume I, edited by V.Ambriola and G.Tortora, World Scientific Publishing Company, New Jersey, 1993

[^Parnas72]: Parnas, David Lorge. ["On the criteria to be used in decomposing systems into modules."](https://www.win.tue.nl/~wstomv/edu/2ip30/references/criteria_for_modularization.pdf) Communications of the ACM 15.12 (1972): 1053-1058.



