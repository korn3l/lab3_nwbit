#Czesc 1

git commit

git branch nazwa	#tworzy nowa galaz

git chceckout nazwa	#przechodzi do podanej galezi

git merge nazwa		#laczy dwie galezie (scala)

git rebase nazwa	#drugi sposob laczenia (laczy z roznych galezi)

#1
git commit 
git commit

#2
git branch bugFix
git checkout bugFix

#3
git checkout -b bugFix; git commit
git checkout main; git commit
git merge bugFix

#4
git checkout -b bugFix; git commit
git checkout main; git commit
git checkout bugFix
git rebase main

#Czesc 2

git commit C4		#odlacza HEADa i przylacza do commita

git checkout nazwa^	#daszek odziela HEADa do poprzedneigo commita (rodzica)

git  checkout nazwa^^	#odziela HEADa do dziadka

git branch -f nazwa HEAD~1 

git reset nazwa

git revert nazwa

#1
git checkout C4

#2
git checkout bugFix^

#3
git branch -f main C6
git checkout HEAD~1
git branch -f bugFix HEAD~1

#4
git reset HEAD~1
git checkout pushed
git revert HEAD

#Czesc 3

git cherry-pick C3 C4 C7	#okresla ze chcemy przeniesc zmiany ponizej swojej obecnej lokalizacji

gti rebase -i HEAD~4		#interaktywny rebase

#1
git cherry-pick C3 C4 C7

#2
gti rebase -i HEAD~4

#Czesc 4
#1
git checkout main
git cherry-pick C4

#2
git rebase -i HEAD~3
gti commit --amend
git rebase -i HEAD~2
git rebase caption main

#3
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

#4
git checkout C1
git tag v0
git checkout C2
git tag v1

#5
git describe
git commit

#Czesc 5
#1
git rebase main bugFix
git rebase bugFix sie
git rebase side another
git rebase another main

#2
git checkout C2
git branch bugwork
git checkout main
#lub
git branch bugWork main^^2^

#3
git  rebase -i HEAD~4
git checkout one
git rebase C2'
git checkout three
git rebase C2
git checkout two
git cherry-pick C5 C4' C3' C2'
git checkout main
git rebase C5
#lub

git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
gti branch -f three C2
