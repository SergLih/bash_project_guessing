all: README.md

README.md: guessinggame.sh
	echo "bash_project_guessing" > README.md
	date -d "7 hours" "+%Y-%m-%d %H:%M:%S" >> README.md
	wc -l guessinggame.sh |  egrep -o "[0-9]+" >> README.md

clean:
	rm README.md