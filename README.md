#pagesize facter

###Module description

This module provides a simple custom fact to retrieve the memory [page size](https://en.wikipedia.org/wiki/Page_%28computer_memory%29)
which can be used to optimize I/O operations.

##Setup

Clone this repository into your modules folder with:

`git clone https://github.com/poz2k4444/puppet-pagesize.git`

##Usage

After installation, you can use the custom fact by including the module in your
module or manifest with `include pagesize` or you can copy the pagesize.rb file
into your own facter folder.

##Testing

In order to test the facter you have to install `rspec-puppet` gem from the
official repositories and just run `rspec` in the root path of the module.

This module has been tested on:

| OS   | Release | Architecture |
|------|---------|--------------|
|Debian|    8    |     amd64    |