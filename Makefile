OAK = /Users/koren/Tresorit/Mac/code/py/oak/oak.py
generate : 
	python3 $(OAK) -o ../deploy/ -p id -x base_templates/.* .
	git commit -a -m "autocommit"
deploy : 
	cd ../deploy
	git commit -a -m "autocommit"
	git push
	cd ../src
