## pseudo code
## logic to push changes to github


Requirements
1. check for git || install git
2. Be within a respository (aka folder)
   a. folder must contains .git folder
3. check ~/.ssh/known_hosts to see if github.com is a known host
4. check if git user has been configured (~/.gitconfiq)

Step 0: 
  check for the number of arguments given
  if none, let user know the usage of teh scrip
  exit 
Step 1: 
   check if git is install or install git

   
Step 2: 
   Check if pwd contains a folder by .git;
   a. if so proceed
   b. else, prompt the user for repo name and save it as a variable

Step 3:
  Check if user is authenticated via SSH
  a. grep for "github.com" domain in ~/.ssh/known_hosts
  b. if authenticated, proceed
  c. else, notify user to establish authentication then exit


Step 4: 
  Check if a file by ".gitconfig" exist in the home directory
  a. if condition to check file exists
  b. if file exist, proeceed
  c. else, 
     -ask for github username and save as var
     -ask user for github associated email and save as var
     -configure the user with the provided information

Step 5: 
  git add $1
  git cmmit -m "$2"
  git push
