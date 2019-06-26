# CommonMark

[![Build Status](https://travis-ci.org/wito/CommonMark.svg?branch=master)](https://travis-ci.org/wito/CommonMark)

## Summary

CommonMark is a `#pureswift` implementation of [the CommonMark Spec](https://spec.commonmark.org), including an XHTML renderer.

The goal for this implementation is to provide a single, simple interface, summarized thusly:

    public extension String {

      /// An XHTML representation of the markdown in the string.
      var renderedMarkdown: String { get }

    }
