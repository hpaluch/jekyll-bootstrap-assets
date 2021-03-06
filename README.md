# Jekyll Blog with Boostrap template and assets (cache busting)

Hello! This is template for Jekyll (static web site Blog generator)
using responsive Bootstrap template and Jekyll-assets (cache busting
and compression)

See [Live Demo](https://hpaluch.github.io/jekyll-bootstrap-assets)!


# Setup

Tested on Debian and Ubuntu

## Setup for Debian 9.5

Install following packages:

```bash
sudo apt-get install git ruby-bundler ruby-dev
```

Now follow [Setup - common instructions](#setup---common-instructions)

## Setup for Ubuntu

These instructions are for Ubuntu 14.04.4 LTS for Jekyll 3.1.3:

Install Ruby 2 (Jekyll 3.x requirements) + git for checkout:

```bash
sudo apt-get install ruby2.0-dev ruby2.0 git
```

Install bundler (into /usr/local/bin) via command:

```bash
sudo gem2.0 install bundler
```

Now follow next 
chapter - [Setup - common instructions](#setup---common-instructions)
 
## Setup - common instructions

Checkout this project - as non-privileged user:
```bash
cd
git clone https://github.com/hpaluch/jekyll-bootstrap-assets.git
cd jekyll-bootstrap-assets/
```

For the 1st time you need to install Jekyll's gems using command:

```bash
bundler install
```

## Running Jekyll

* To Generate static pages suitable for deployment:
  * edit `url` and `assets/cdn` in `_config.yml` - defaults are:
    ```
    url: "https://hpaluch.github.io/jekyll-bootstrap-assets"
    assets:
      cdn: https://hpaluch.github.io/jekyll-bootstrap-assets
    ```
  * and then invoke script to generate pages in `_site` target directory: 
    ```bash
    ./generate_website.sh
    ```

* To Develop pages dynamically - accesible from localhost only:

```bash
./run_jekyll_server.sh
```
* To Develop pages dynamically - accesible from any remote hosts:
  * change URLs in `_config_server_remote.yml` to resolve properly
    to your development server
  * and then run:
    ```bash
    ./run_jekyll_server_remote_access.sh
    ```

# Links

*	[Jekyll by Example](http://www.andrewmunsell.com/tutorials/jekyll-by-example/index.html)

*	[Jekyll configuration](http://jekyllrb.com/docs/configuration/)

*	[Jekyll variables](http://jekyllrb.com/docs/variables/)

*	[MarkDown syntax](http://daringfireball.net/projects/markdown/syntax)

