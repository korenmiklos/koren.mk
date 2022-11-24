generate : 
	python3 oak.py -o ../deploy/ -p id -x base_templates/.* .
	git commit -a -m "autocommit"
deploy : 
	cd ../deploy
	git commit -a -m "autocommit"
	git push
	cd ../src
