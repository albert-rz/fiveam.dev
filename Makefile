SITE=docs/_site

define tidy_up
@echo "Fixing some issues"
mkdir $(SITE)/about && mv $(SITE)/about.html $(SITE)/about/index.html
mkdir $(SITE)/contact && mv $(SITE)/contact.html $(SITE)/contact/index.html
# find docs/_site -type f -name "*.html" -exec sed -i 's/\/https:/https:/g' {} +
# @find docs/_site -type f -name "*.xml" -exec sed -i 's/\/https:/https:/g' {} +
# @find docs/_site -type f -name "*.html" -exec sed -i 's/fiveam.dev\/\//fiveam.dev\//g' {} +
# @find docs/_site -type f -name "*.xml" -exec sed -i 's/fiveam.dev\/\//fiveam.dev\//g' {} +
# @echo "Pretty print"
@find docs/_site -type f -name "*.html" -exec tidy -config .tidyrc -miqb {} \;
endef

install:
	cd docs && bundle install

site: clean posts
	cd docs && bundle exec jekyll build
	$(call tidy_up)	

gh-site: clean posts
	cd docs && bundle exec jekyll build -b https://albert-rz.github.io/fiveam.dev/
	$(call tidy_up)

serve:
	cd docs && bundle exec jekyll serve --watch

posts:
	find docs/_jupytext/*.py -exec jupytext --to markdown {} \;
	mv docs/_jupytext/*.md docs/_posts

clean:
	rm -rf docs/.jekyll-cache
	rm -rf docs/_site
	rm -rf docs/.sass-cache

http:
	cd docs/_site && python3 -m http.server