README.md: guessinggame.sh
	touch README.md
	echo "Sophia's Project" >> README.md
	echo "\n Date and Time:" >> README.md
	date >> README.md
	echo "\n Number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
