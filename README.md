# **Ruby Directory Traverser Methods**

* `Dirverser`
* [Source](https://github.com/decal/dirverser)
* [Issues](https://github.com/decal/dirverser/issues)
* [Documentation](http://rubydoc.info/gems/dirverser)
* [Email](mailto:decal [AT] sdf {D0T} org)

## **Description**

* Code to facilitate testing directory traversal issues

## **Features**

## **Examples**

```
require 'dirverser'

include Dirverser::URI

traverse('https://google.com/a/b/c')
=> ["https://google.com/a/", "https://google.com/a/b/", "https://google.com/a/b/c/"]
```

## Requirements

* [Ruby](http://www.ruby-lang.org/) >= 2.4.0

## Install

    $ gem install dirverser

## Copyright

Copyright (c) 2017 _Derek Callaway_

See `LICENSE.txt` for license information.
