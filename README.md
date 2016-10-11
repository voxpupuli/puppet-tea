#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

:tea: Types: Abstracted & Extracted

This module provides a set of Puppet 4.4+ compatible datatypes for use of validation in defined types and class declarations.

## Module Description

The basic idea behind this module is to retire [puppetlabs-stdlib](https://forge.puppet.com/puppetlabs/stdlib)'s `validate_XYZ()` functions. Unlike `validate_()`, these datatypes can be verified by the parser, instead of being validated during compilation.

Installing this module will make it so that puppet [auto-loads](https://docs.puppet.com/puppet/4.4/reference/release_notes.html#type-aliases) all types defined in `types/`

## Reference

### public types
* `Absolutepath`: matches http/https URLs
* `HTTPUrl`: matches http/https URLs
* `HTTPSUrl`: matches https URLs
* `Port`: all valid TCP/UDP ports
* `Privilegedport`:  ports which need rootly power to bind to
* `Unprivilegedport`:  ports which do not need rootly power
* `IPv4`: Matches valid IPv4 address
* `IPv6`: Matches valid IPv6 address
* `ipaddress`: Matches valid IPv4 or IPv6 address
* `IPv4_cird`: Matches valid IPv4 address in CIDR notation
* `IPv6_cidr`: Matches valid IPv6 address in CIDR notation
* `Puppetsource`: matches values that can be used for a file type source parameter
* `Puppetcontent`: matches values that can be used for a file type content parameter

### private types
* `fileuri`: Matches file:/// uris, used by Puppetsource
* `puppeturi`: Matches puppet:/// uris, used by Puppetsource

## Limitations

This module is compatible with any platform puppet 4.4+ is compatible with.

## Development

Please see CONTRIBUTING.md for how this module is developed, and how you can help.
