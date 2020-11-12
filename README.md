# GIT TIPS

- git status: show current status of repo
- git add: add files to be commited
- git commit -m 'a message here': commit changes with a meaningful message.

## to add github repo
 - create new repo on github
 - want to add the remote to our project on computer (git remote add origin _ssh link here_)

# Basic workflow

----------------------------- repeat this often
- try to break up the problems into simpler problems (maybe even do this on paper,
  - or comments in code, or rubber ducky method (explain it outloud) )
- code one of these broken up parts
- test and make sure that that chunk is complete
- git add (files that you changed related to that chunk of work)
- git commit -m 'message describes that chunk of work'
- repeat
--------------------------------------------------

------------------------------- with github --------------------
#### to push changes up to github
- git push origin master (when a couple of chunks are done, or when teammate needs changes)

#### to GET changes that were made in github
- git pull origin master