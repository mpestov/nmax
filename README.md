# Nmax

This gem find digits in file and print n maximum from ones

## Installation

Unfortunately this gem is not publicated on rubygems.org so you should use `specific_install` gem.

First of all install 

    $ gem install specific_install

And then install this gem:

    $ gem specific_install https://github.com/mpestov/nmax

## Usage

After gem installed you can use it from command line.

    $ nmax 2 < some_file.txt
    
To print all digits in descending order from file you can omit `n`

    $ nmax < some_file.txt

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nmax. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nmax project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nmax/blob/master/CODE_OF_CONDUCT.md).
