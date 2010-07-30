# How to make screenshots of a website

## Step 1: get wkhtmltoimage to run on your server
* get the right binary for your platform at http://code.google.com/p/wkhtmltopdf/downloads/list
* download it into your current dir: "$ wget http://wkhtmltopdf.googlecode.com/files/wkhtmltoimage-0.10.0_beta4-static-i386.tar.bz2"
* unzip it if necessary: "$ tar xvjf wkhtmltoimage-0.10.0_beta4-static-i386.tar.bz2"
* move the binary into your path: "$ mv ./wkhtmltoimage-i386 /usr/bin/wkhtmltoimage"
* make it executable: "$ chmod 755 /usr/bin/wkhtmltoimage"
* call it to see if it works: "$ wkhtmltoimage"

## Step 2: binary does not run
* is X11 installed on Linux? run "apt-get install x11-common" if not
* is your server 64bit? try installing the 32bit libs via "apt-get install ia32-libs"
* check out http://code.google.com/p/wkhtmltopdf/wiki/static for more tips

## Step 3: get the WebSnap gem from http://github.com/siuying/websnap/
* "$ gem install websnap"
* call wkhtmltoimage-proxy, to see if it's available: "$ wkhtmltoimage-proxy"
* failed? symlink it from your gem directory (see GEM PATHS when calling "$ (sudo) gem environment") by calling "$ ln -s /usr/lib/ruby/gems/1.8/gems/websnap-0.1.1/bin/wkhtmltoimage-proxy /usr/bin/wkhtmltoimage-proxy"

## Step 4:
* you should now be ready to use snapwrap