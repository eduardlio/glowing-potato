# glowing-potato
I called it glowing potato because github told me to but it's actually just a resume builder. I'm just using pandoc and a bunch of other bash commands to write my resume.

# About

This is a super simple markdown resume builder I decided to code as an exercise
to learn shell scripting. If it seems a lot like [samuell's mdnote](https://github.com/samuell/mdnote), that's because I got some motivation to do this from having used it. If you hven't already, it's a great way to keep track of what you did and how you did it. As someone said on HN once: "You can't grep physical journals" or something along those lines. 

## Dependencies

This requires [pandoc](https://pandoc.org/installing.html) to run

## How to use

1. Initialize your resume repo with `git init`
2. Set up your repo with `git remote add origin <repository url>`
3. Edit the resume with `./editResume.sh` 
   - Edit the resume
   - Save it
   - Exit
   - Changes are automatically staged/commited/pushed to your repo
4. Convert the resume.md file to an html file with `./md_to_html.sh` (also
   commits/pushes changes to repo)


I've used gvim because I'm on windows but you can change it in `editResume.sh`.
Where it says `gvim resume.md`, change it to `vim resume.md` or whatever editor
you like to use
