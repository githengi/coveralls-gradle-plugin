.PHONY: release
release:
	git clone git@github.com:kt3k/repository.git
	LOCAL_MVN_REPO=`pwd`/repository/maven/release gradle uploadArchives
	cd repository ; git add . ; git commit -m 'Automated release' ; git checkout gh-pages ; git merge master ; git push origin master gh-pages
	rm -rf repository
