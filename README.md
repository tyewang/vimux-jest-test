Vimux plugin for running [jest](https://facebook.github.io/jest/) tests. Similar to [vimux-ruby-test](https://github.com/pgr0ss/vimux-ruby-test), [vimux-nose-test](https://github.com/pitluga/vimux-nose-test), etc.

Honestly, this is basically [vimux-nose-test](https://github.com/pitluga/vimux-nose-test) with `s/nose/jest` 😉.

## Requirements

- vim
- [vimux](https://github.com/benmills/vimux) (0.3.0 or greater)

## Installation

It's pathogen compliant, so just drop in your bundle directory. E.g.:
```
cd ~/.vim/bundle
git clone git@github.com:tyewang/vimux-jest-test.git
```

## Commands

- RunJest - runs all the tests
- RunJestOnBuffer - runs all the tests in the current file
- RunJestFocused - runs the current test under the cursor

## Notes
- This plugin does not run any tests that would not be normally run by jest, e.g. `test.skip`, etc
- Because of limitations with jest, running focused tests may run multiple tests if they have the same name
