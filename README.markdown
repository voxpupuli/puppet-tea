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

The basic idea behind this module is to retire [puppetlabs-stdlib](https://forge.puppet.com/puppetlabs/stdlib)'s `validate_XYZ()` functions. Unlike `validate_()`, these datatypes can be verified by the compiler, instead of being run at application state.

Installing this module will make it so that puppet [auto-loades](https://docs.puppet.com/puppet/4.4/reference/release_notes.html#type-aliases) all types defines in `types/`

## Reference

* type Port = Integer[1, 65535]
* type Unprivilegedport = Integer[1024, 65535]
* type Privilegedport = Integer[1, 1023]

## Limitations

This module is compatible with any platform puppet 4.4+ is compatible with.

## Development

Please see CONTRIBUTING.md for how this module is developed, and how you can help.
