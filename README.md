# Jekyll Blog with Boostrap template and assets (cache busting)

Hello! This is template for Jekyll (static web site Blog generator)
using responsive Bootstrap template and Jekyll-assets (cache busting
and compression)

See [Live Demo](https://hpaluch.github.io/jekyll-bootstrap-assets)!


# Setup

Tested under Fedora 41, (in the past Ubuntu and Debian)

## Setup for Fedora 41

> [!WARNING]
>
> It is tricky, because we use [jekyll-assets](https://github.com/envygeeks/jekyll-assets)
> plugin that works with Jekyll 3.x only, but that works with Ruby 2.x only and that works
> with openssl 1.1.x only (!). So setup below is clumsy ...

Install these dependencies:
```shell
sudo dnf group install c-development
sudo dnf install gdbm-devel readline-devel perl-FindBin perl-Pod-Html
```

We don't install OpenSSL devel packages - because they are *too new* to build with Ruby 2.x !

Now we have to follow splendid guide :-)
from https://stackoverflow.com/questions/72250611/rsa-sslv23-padding-undeclared-first-use-in-this-function-did-you-mean-rsa

First step - install OpenSSL 1.1.1:

```shell
mkdir -p ~/old-openssl
cd ~/old-openssl
curl -fLO https://github.com/openssl/openssl/releases/download/OpenSSL_1_1_1w/openssl-1.1.1w.tar.gz
tar xvf openssl-1.1.1w.tar.gz 
cd openssl-1.1.1w/
./config --prefix=/opt/old-openssl
make
sudo mkdir /opt/old-openssl
echo chown `id -un`:`id -gn` /opt/old-openssl/
sudo chown `id -un`:`id -gn` /opt/old-openssl/
make install
# copy certs - otherwise rubygems.org will fail because CA not trusted
cp /etc/ssl/certs/* /opt/old-openssl/ssl/certs
```

Second step is to install Ruby 2.7.x with dependence on OpenSSL 1.1.1:
```shell
mkdir ~/old-ruby
cd ~/old-ruby
curl -fLO https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.6.tar.gz
tar xvf ruby-2.7.6.tar.gz
cd ruby-2.7.6/
make -j`nproc`
sudo mkdir /opt/old-ruby
sudo chown `id -un`:`id -gn` /opt/old-ruby
make install
```

Testing (you can add these two lines to your `~/.bashrc` if you don't plan using
any other version of ruby lang):

```shell
# add ruby 2.7.6 to path 
export PATH="/opt/old-ruby/bin:$PATH"
```

And finally:

```shell
$ ruby --version
ruby 2.7.6p219 (2022-04-12 revision c9c2245c0a) [x86_64-linux]
```

Now in this project directory do:
```shell
bundler install
./run_jekyll_server.sh
```

Point your browser to http://127.0.0.1:4000 and enjoy!

## Setup for Debian 9.5

> [!WARNING]
>
> No longer  maintained


Install following packages:

```bash
sudo apt-get install git ruby-bundler ruby-dev
```

Now follow [Setup - common instructions](#setup---common-instructions)

## Setup for Ubuntu

> [!WARNING]
>
> No longer  maintained

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

