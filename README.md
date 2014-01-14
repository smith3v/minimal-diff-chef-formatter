Minimal-diff formatter
======================

A formatter for [Chef](http://getchef.com) to keep the output of chef-client 
as small as possible. Unlike default minimal formatter it shows more info about
updated resources.

This formatter will display the total number of processed resources, as the
number of unchanged, updated and failed resources.

This is inspired by [Nyan Cat <3 Chef Formatter](https://github.com/andreacampi/nyan-cat-chef-formatter).
Actually no, scratch that: this is basically a ripoff. So sue me second after @andreacampi.

Usage
=====

Install the gem: 

    gem install minimal-diff-chef-formatter

If you are using Omnibus Chef you need to specify the full path to the `gem`
binary:

    /opt/chef/embedded/bin/gem install minimal-diff-chef-formatter

Or write a cookbook to install it using the `chef_gem` resource, if that's
how you roll. See http://community.opscode.com/cookbooks/nyan-cat for inspiration.

Then add the following to your `/etc/chef/client.rb` file:

    gem 'minimal-diff-chef-formatter'
    require 'minimal-diff-chef-formatter'

This enables the formatter, but doesn't use it by default. To see Nyan in all its
glory, run:

    chef-client -Fmindiff -lfatal

Enjoy!

For serious Nyan addicts only!
------------------------------

To enable the Nyan formatter by default, add the following line to
`/etc/chef/client.rb`:

    formatter :mindiff


Author
----------
[Vyacheslav Kuznetsov](https://www.github.com/smith3v) :: @smith3v
[Andrea Campi](https://www.github.com/andreacampi) :: @andreacampi
[Matt Sears](https://wwww.mattsears.com) :: @mattsears
