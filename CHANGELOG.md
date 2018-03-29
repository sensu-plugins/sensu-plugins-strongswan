# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]

## [2.1.1] - 2018-03-28
### Fixed
- (metrics-strongswan.rb, metrics-strongswan-connection.rb) Fixed bug with regexp (@yuri-zubov)


## [2.1.0] - 2018-03-17
### Added
- Added ability to check all existing connection and get metrics from all connections (@yuri-zubov)

## [2.0.0] - 2018-03-07
### Breaking Changes
- Dropping ruby `< 2.3` support (@yuri-zubov)

### Added
- Added new metrics-strongswan-connection.rb plugin for getting connection metrics (@yuri-zubov)

## [1.2.0] - 2018-03-04
### Added
- Added new metrics-strongswan-listcounters.rb plugin for getting IKE counters (@yuri-zubov)

### Breaking Changes
- Dropping ruby `< 2.1` support (@yuri-zubov)

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

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/2.1.1...HEAD
[2.1.1]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/2.1.0...2.1.1
[2.1.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/1.2.0...2.0.0
[1.2.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/sensu-plugins/sensu-plugins-strongswan/0.1.1...1.0.0
[0.1.1]: https://github.com/sensu-plugins/sensu-plugins-strongswan/compare/0.1.0...0.1.1
