# Rspec XML Helpers

[![Build Status](https://travis-ci.org/theincognitocoder/rspec-xml_helpers.svg?branch=master)](https://travis-ci.org/theincognitocoder/rspec-xml_helpers)
[![Coverage Status](https://coveralls.io/repos/github/theincognitocoder/rspec-xml_helpers/badge.svg?branch=master)](https://coveralls.io/github/theincognitocoder/rspec-xml_helpers?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/f9ac56f41cd6333d98ee/maintainability)](https://codeclimate.com/github/theincognitocoder/rspec-xml_helpers/maintainability)

Rspec Xml Helpers

## Links of Interest

* [Documentation](https://www.rubydoc.info/github/theincognitocoder/rspec-xml_helpers/master)
* [Changelog](https://github.com/theincognitocoder/rspec-xml_helpers/blob/master/CHANGELOG.md)

## Installation

Add rspec-xml_helpers to your project's Gemfile and then bundle install.

```ruby
gem 'rspec-xml_helpers', '~> 1.0'
```

## Basic Usage

Add the following to your `spec_helper.rb`:

    require 'rspec/xml_helpers'

Now you can do the following in your specs:

    expect('<xml/>').to match_xml('<xml/>')

The `match_xml` helper has the following qualities:

* XML attribute ordering does not effect equality.
* Order of XML elements with the same name is significant.
* Order of XML elements with different names does not effect equality.
* Self-closed elements are considered equal to empty elements.
* Whitespace is ignored in XML nodes that contain children.

This matcher has a few known limitations:

* XML namespaces are ignored.
* XML entities are ignored.
* XML nodes may not contain both text and child nodes.

## License

MIT License

Copyright 2018 The Incognito Coder

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished
to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
