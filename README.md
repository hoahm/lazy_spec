# Lazy Spec

Lazy Spec provides RSpec syntax that test common Rails functionality, like Should Matchers.

----

### Usage

```
# http://en.wikipedia.org/wiki/Internet_media_type
get '/api/v1/categories'
expect(response).to have_json_type
expect(response).to have_content_type('application/json')
# http://billpatrianakos.me/blog/2013/10/13/list-of-rails-status-code-symbols/
expect(response).to have_http_status(:error)
expect(response).to have_charset('utf-8')
expect(response).to be_a_collection
expect(response).to be_a_collection(length: 10)
expect(response['collection'][0]).to have_attributes(%w(id name))
```

## Installation

### RSpec

Include `lazy_spec` in your Gemfile:

    ruby
    group :test do
        gem 'lazy_spec'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lazy_spec

[Then, configure the gem to integrate with RSpec](#configuration).

Now you can use matchers in your tests. For instance a model test might look
like this:

``` ruby
describe 'UserApi' do
  it 'response as JSON type' do
    get '/api/v1/users'
    expect(response).to have_json_type
  end
end
```

### Configuration

Include it in spec/rails_helper.rb

```
require 'lazy_spec'
```

## Contributing

Lazy Spec is open source, and I am grateful for everyone who's contributed so far.

1. Fork it ( https://github.com/hoahm/lazy_spec.git )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Versioning

Current version: __0.0.1__

## License

Lazy Spec is copyright © 2015 [Hoa Hoang]. It is free software,
and may be redistributed under the terms specified in the
[MIT-LICENSE](MIT-LICENSE) file.

## About author

Lazy Spec is maintained by Hoa Hoang, a young-passionate developer at [Silicon Straits Saigon](http://siliconstraits.vn).

If you want to know more about me, find me at:

See [Linkedin][http://vn.linkendin.vn/hoahoangminh].

-