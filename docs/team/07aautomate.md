asdas

# Automate More

Success of open source came when 100s of tools (some alrge some small) were applied to the 100s of thigns that
slow up softwre development. Find the thing you do a lot and consider automate it.

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

## Warning

Do not over-automate. See [less is more](07ssessisMore.md)

