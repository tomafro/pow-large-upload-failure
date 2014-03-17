Failing uploads example for pow
===============================

This simple sinatra app is a minimal test case to show large file uploads failing with pow.

This app can be run in three ways:

  1) With rack: bundle exec rackup

  2) With nack (0.15.0 or 0.16.0): node nack.js

  3) With pow: (link the app into your .pow folder)


Using both rack and nack, uploading a large file (> 10mb) will show the first 16 bytes
of that file in hex (which you can compare with the actual file using `xxd <real-file> | head -1)

Using pow, it fails with a "NoMethodError"

