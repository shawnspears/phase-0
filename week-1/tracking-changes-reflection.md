How does tracking and adding changes make developers' lives easier?
> Tracking and adding changes can make developers' lives easier because through version control and branching, we are able to work on another version of the master (or final project) so that when changes are saved to the master, they have already been edited and reviewed. Version control also helps to make things easier by allowing different collaborators to be working on separate tasks while not interfering with anyone else's work and thereby reducing the potential for error.

What is a commit?
> By working with Git, your changes are automatically saved thanks to version control. These changes can then be collected in a group (that are typically organized thematically based on the change) that is called a commit. All of these changes are essentially then saved as a checkpoint which is recorded for future reference in the git log.

What are the best practices for commit messages?
> A good commit message's first letter is capatilized, and the entire message should be 50 characters or less as it should be a short description. The message should be in the imperative, present tense, as it should read as instructions for what the commit will do when applied.

What does the HEAD^ argument mean?
> HEAD^ refers to the last commit from the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
> There are three stages of a git change: untracked files, changes not staged for commit, and changes to be committed. In order to move a file from untracked to staged (changes to be committed) you use the "git add file" command. Git changes can then be committed using the "git commit -m "commit message" command.

Write a handy cheatsheet of the commands you need to commit your changes?
> master, git pull, git checkout -b branch-name, git add, git commit -m "commit message", git push origin branch-name, git checkout master, git fetch origin master, git merge origin/master

What is a pull request and how do you create and merge one?
> A pull request is the process to merge changes to the master branch. In order to create one you have to first be on a feature branch and push it to GitHub using the command git push origin. From here you should be able to access the pull request on GitHub where you can merge the pull request onto the master branch.

Why are pull requests preferred when working with teams?
> Pull requests are preferred when working with teams because we want our code to be reviewed by collaborators to ensure that the changes being merged to the master branch have no errors. By having collaborators review the code for errors, we can reduce the potential for the master branch to be broken.