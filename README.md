# Jekyll Blog with Boostrap template and assets (cache bustin)

Hello! This is template form Jekyll (static web site Blog generator)
using responsive Bootstrap template and Jekyll-assets (cache busting
and compression)


## Setup

These instructions are for Ubuntu 14.04.4 LTS for Jekyll 3.1.3:

Install Ruby 2 (Jekyll 3.x requirements):

	:::bash
	sudo apt-get install ruby2.0-dev ruby2.0

Install bundler (into /usr/local/bin) via command:

	:::bash
	sudo gem2.0 install bundler

Install Jekyll itself (as non privileged user):


	:::bash
	bundler install

## Running Jekyll

* To Genereate static pages in `_site` directory:

	:::bash
	./generate_website.sh



* To Develop pages dynamically

	:::bash
	./run_jekyll_server.sh

# Links

*	[Jekyll by Example](http://www.andrewmunsell.com/tutorials/jekyll-by-example/index.html)

*	[Jekyll configuration](http://jekyllrb.com/docs/configuration/)

*	[Jekyll variables](http://jekyllrb.com/docs/variables/)

*	[MarkDown syntax](http://daringfireball.net/projects/markdown/syntax)

