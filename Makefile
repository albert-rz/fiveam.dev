
serve:
	cd docs && bundle exec jekyll serve --watch

clean:
	rm -rf .jekyll-cache
	rm -rf docs/_site
	rm -rf docs/.sass-cache