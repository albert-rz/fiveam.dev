
serve:
	cd docs && bundle exec jekyll serve --watch

posts:
	find docs/_jupytext/*.py -exec jupytext --to markdown {} \;
	mv docs/_jupytext/*.md docs/_posts

clean:
	rm -rf .jekyll-cache
	rm -rf docs/_site
	rm -rf docs/.sass-cache