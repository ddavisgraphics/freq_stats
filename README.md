# FreqStats

A gem that helps to provide some stats for arrays of text.  Initially it was created to help me name my cat, but I figured it could have other uses and I hope it helps someone.   

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'freq_stats'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freq_stats

## Usage
Freq stats has 3 types methods for getting and dealing with frequencies of items in arrays.  Mode- which returns the most popular item in the array, Top 3- which returns the top 3 items in the array an the items numerical count, and frequency list which returns all items and items numerical count.  

### Sample Code
Simply require the freq stats gem, feed your array to the `FreqStats::SuperArray` and use the results in whatever way you intended.

Comes in handy when trying to randomly choose a name for your cat, or trying to figure out some statistics of an array.  Might come in handing when creating n grams for AI or generating some common search terms.  

```ruby
    require 'freq_stats'

    array_of_names = ["The Great Goblin", "Veiled Lady", "Bert", "Aerys II Targaryen", "Magrathean sperm whale", "The Great Goblin", "Oin", "Oin", "Oin", "Bofur", "Bert", "Bert", "JinJenz", "JinJenz", "Oin", "Bofur", "Bofur", "Bofur", "Bofur", "Oin"]

    FreqStats::SuperArray.new(array_of_names).mode # ["Oin", 5]
    FreqStats::SuperArray.new(array_of_names).top_3 # ["Oin", "Bofur", "Bert"]
    FreqStats::SuperArray.new(array_of_names).freq_list # [["Oin", 5], ["Bofur", 5], ["Bert", 3], ["The Great Goblin", 2], ["JinJenz", 2], ["Aerys II Targaryen", 1], ["Veiled Lady", 1], ["Magrathean sperm whale", 1]]
``` 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ddavisgraphics/freq_stats. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FreqStats project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/freq_stats/blob/master/CODE_OF_CONDUCT.md).
