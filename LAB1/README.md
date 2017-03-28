# MIDPS LAB #1

# Connection and Set Up Server and Environments

As a server in this laboratory work I used virtual machine with Mac OS X, because it is easier to set up ssh connection at this platform.

After connection to virtual machine I installed Xcode comand line tools in order to use git, and after this I created an empty repo for all MIDPS labs, because I didn't observe a sample projects of Hello World programs at repo with labs requirements, I wrote these programs by myself, and after this I compiled and executed this 2 sample programs using `gcc` and `python`.

Intersting fact is that I spent much less time in comparision with my colleagues, and especially with my colleague with Arch Linux, for set up a ssh connection and virtual machine, because I used Mac OS, (not a MacBook), operation system for perfoming this laboratory work. I have installed it also on my laptop(Yes, I am an Idiot).

# Git Experience

Having the repo for LAB #1, with command `git checkout -b "branch_name"` I created 2 branches, one is named c and second is python. These branches contain sample Hello World Programs written in corresponding language, they are used for perfoming neccessary git commands.

- ## Setting a branch to track a remote origin
Using command `git branch -u remote/branch_name` I set branch python to track remote origin in this way.
![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/track_origin.png)

- ## Reseting a branch to previous commit
I used 2 methods in order to reset a branch to previous commit
- `git revert`
- `git reset`

The difference is that `git reset` remove commit from history but `git revert` creates a patch which cancel all changes of this commit but commit is saved in history of commits.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/reset_branch.png)

- ## Merging 2 branches and Solving conflicts
Merging branches is trivial action in git, it is perfomed by `git merge 'branche_name'` command.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/merge.png)

And only issues what can appear with it are conflicts when the same lines are modified multiple times.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/conflict.png)

We solve conflicts by erasing non relevant code.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/solving_conflict.png)

- ## Creating pull request

I forked repo with laboratory requirements and added some sample project of Hello World programs in GO, Swift, D languages. After this I generated a pull request of this changes which can be seen in `pull requests` of lab requirements repo.

- ## GIT cherry-pick
I used `git cherry-pick` in order to add some specific commits from one branch to another, In my opinion it is very useful toll which gives you posibilite to manage merging of changes very efficient, I didn't know about it until this laboratory work, but in future I will use, especially at hackathons.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/cherry_pick1.png)
![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/cherry_pick2.png)

- ## GIT rebase

At beging of laboratory work I had an issue related to the fact what I made some mistakes when I created the tree of branches, and I didn't can merge 2 branches because they had the same commits. I needed to delete some commits from one branch and I was searching more when half of hour before I found solution how to make this with rebase, in this way I first use the `git rebase` command.

Having the log of commits it is possible to select which commit you want to delete, and after this is opened a file in vim or nano where you choose what to do with commits.

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/rebase_py1.png)

If we select drop and remove commits from list, they are removed from commits history

![alt tag](https://raw.githubusercontent.com/ASV44/MIDPS_LABS/master/LAB1/images/rebase_py2.png)

- ## Shell Script
Writing shell script was something new for me, but in fact it is not so hard. I work with shell scripts only once but it was scripts for Windows which uses Windwos API for generating speach. This script doesn't have something specific and I didn;t have some issues with it.

```
echo Enter project name
read PROJECT
for FILE in ${PROJECT}/* ; do
	case $FILE in
		*.c) gcc $FILE -o ${FILE%.*} && ./${FILE%.*}
			 	;;
		*.py) python3 $FILE
			 		;;
		*.cpp) g++ $FILE -o ${FILE%.*} && ./${FILE%.*}
		      ;;
		*.java) mkdir -p java/class
						javac -d java/class $FILE
						cd java/class
						for CLASS in * ; do
							java ${CLASS%.*}
						done
						;;
		*.rb) ruby $FILE
					;;
	esac
done
```

# Conclusion
This laboratory work gives the better understanding of VCS and show true power of it, from this is posiblle to realise that today VCS is tool which developers must used in order to develop products faster and also repositories gives posibility to work remote which is very useful.

In common with remote server, VCS represents enviroment which is not hard to set up and use, and which provides posibilitty to work without relevant conditions, and this is the reason why it should be known and used.
