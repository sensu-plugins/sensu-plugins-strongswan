# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]
### Fixed
- check-strongswan-connection.rb: add unknown status if unable to retrieve connection status (@nishiki)

## [1.1.0] - 2018-02-22
### Added
- check-strongswan-connection.rb: checks the health of a strongwan connection (@nishiki)

### Changed
- update Changelog guidelines location (@majormoses)

### Fixed
- minor typos (@majormoses)

## [1.0.0] - 2017-07-09
### Added
- Ruby 2.3.0 & 2.4.1 testing (@Evesy)

### Breaking Changes
- Removed Ruby 1.9.3 support (@Evesy)

## [0.1.1] - 2016-03-17
### Added
- metric for a queued connections (at a state 'connecting') from @xdrus.

### Changed
- Update to rubocop 0.37

## 0.1.0 - 2015-07-23
### Changed
- updated sensu-plugin gem to 1.2.0

### Added
- add check-strongswan.rb and metrics-strongswan.rb plugins

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/1.1.0...HEAD
[1.1.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/0.1.1...1.0.0
[0.1.1]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/0.1.0...0.1.1
