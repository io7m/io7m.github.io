#!/bin/sh

cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML Basic 1.1//EN"
  "http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
  <head>
    <title>io7m.github.io</title>
    <link rel="stylesheet" type="text/css" href="reset.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>
  <body>
    <div>
      <h1>io7m.github.io</h1>
      <table>
        <tr><td>io7m</td><td><a href="http://io7m.com">http://io7m.com</a></td></tr>
        <tr><td>GitHub</td><td><a href="http://github.com/io7m">http://github.com/io7m</a></td></tr>
      </table>
    </div>
    <div>
EOF

./generate-table.sh

cat <<EOF
    </div>
  </body>
</html>
EOF

