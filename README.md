[![Puppet Forge](http://img.shields.io/puppetforge/v/evenup/.svg)](https://forge.puppetlabs.com/evenup/clamav)
[![Build Status](https://travis-ci.org/evenup/evenup-clamav.png?branch=master)](https://travis-ci.org/evenup/evenup-clamav)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with clamav](#setup)
    * [What clamav affects](#what-clamav-affects)
    * [Beginning with clamav](#beginning-with-clamav)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [Development - Guide for contributing to the module](#development)
8. [Changelog/Contributors](#changelog-contributors)


## Overview

A Puppet module to manage ClamAV.

## Module Description

A puppet module that installs the ClamAV anti-virus, anti-malware, anti-other_bad_things program and service.

## Setup

### What clamav affects

* clamav packages
* clamav service

### Beginning with clamav

Installation of the clamav module:

```
  puppet module install evenup-clamav
```

## Usage

Installation with a few config options:

```puppet
    class { 'clamav':
      clamd_options => {
        'LogSyslog' => 'yes',
        'DetectPUA' => 'yes'
      },
      freshcla_options => {
        'LogSyslog' => 'yes'
      }
    }
```


## Reference

### Public methods

#### Class: clamav

Main class for installing/configuring clamav

#####`clamd_options`
Hash.  Options to set for clamd.  Multiple values can be given by using an array as a value:

```puppet
  class { 'clamav':
    freshclam_options => {
      'ExcludePUA' => ['NetTool', 'PWTool']
    }
  }
```

#####`freshclam_options`
Hash.  Options to set for freshclam.  See `clamd_options` for multiple value configuration.

### Private classes

* `clamav::config`: Configures clamav settings
* `clamav::install`: Installs clamav
* `clamav::service`: Manages clamd service

## Limitations

* Only tested on CentOS 7

## Development

Improvements and bug fixes are greatly appreciated.  See the [contributing guide](https://github.com/evenup/evenup-clamav/CONTRIBUTING.md) for
information on adding and validating tests for PRs.


## Changelog / Contributors

[Changelog](https://github.com/evenup/evenup-clamav/blob/master/CHANGELOG)

[Contributors](https://github.com/evenup/evenup-clamav/graphs/contributors)
