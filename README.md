# Bootstrap::Sass::Rails

Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more.
It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more.

Twitter Bootstrap has been converted to Sass which makes it possible to use the default Rails Asset Pipeline

* All assets have been namespaced within twitter/bootstrap to avoid naming conflicts
* Top level requires for sprockets to get the complete bundle with a
  simple = require twitter/bootstrap
* Ability to import individually namespaced stylesheets or javascripts.

## Installation

Add these lines to your application's Gemfile:

    group :assets do
      gem 'bootstrap-sass-rails'
    end

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install bootstrap-sass-rails

## Usage

### Stylesheets

The easiest way to use Twitter Bootstrap is to require it in your `application.css` file.

```css
/*
 *= require twitter/bootstrap
 */

#example {
  /* Your styles... */
}
```

If you need access to the variables within the Twitter Bootstrap framework or want to use the mixins you
will need to import it within an `.css.scss` file. This will still include the complete framework.

```css
@import "twitter/bootstrap";

#foo {
  @include border-radius(4px);
}
```

Using only parts of the framework like variables and mixin you can import all of these individually from
within `.css.scss` files.

```css
@import "twitter/bootstrap/variables";
@import "twitter/bootstrap/mixins";

@mixin myButton($radius: 5px) {
  @include border-radius($radius);
}

#foo {
  @include myButton(10px);
}
```

### Icon Fonts

To ease the common use case of extending Twitter Bootstrap with a icon
font like [Font Awesome](http://fortawesome.github.com/Font-Awesome/) a
css file is included which leaves out the original sprites.

You can use it like this

```css
/*
 *= require twitter/bootstrap-no-sprites
 */
```

or

```css
@import "twitter/bootstrap-no-sprites";
```

Please note that Font Awesome is not included in this gem - you will
need to vendorize the font assets by yourself!

### Javascripts

Using the JavaScript works the same way. You can include them all with a
single require directive from your `application.js`.

```javascript
//= require twitter/bootstrap

$(document).ready(function(){
});
```

If you only want a part of the javascripts require the individual files
from your `.js` file.

```javascript
//= require twitter/bootstrap/modal

$(document).ready(function(){
});
```

## Versioning

This gem will directly track the semantic versioning releases of the Twitter Bootstrap project.
If it should be necessary a build number will be added to the version to
mark releases specific to this gem.

## Note on Patches / Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Credits

This work incorporates [Twitter Bootstrap](https://github.com/twitter/bootstrap) by Twitter, Inc.  
This gem has been inspired by [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) by Ken Collins

## Maintainers

* [Morton Jonuschat](https://github.com/yabawock)

## License

Apache License, Version 2.0

## Copyright

Copyright 2011-2012 Morton Jonuschat  
Twitter Bootstrap copyright 2011-2012 Twitter, Inc  
