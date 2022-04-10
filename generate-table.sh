#!/bin/sh

cat <<EOF
<table class="builds">
  <thead>
    <tr>
      <th>Project</th>
      <th>OpenJDK LTS, Linux</th>
      <th>OpenJDK Current, Linux</th>
      <th>OpenJDK Current, Windows</th>
    </tr>
  </thead>
  <tbody>
EOF

for PROJECT in $(cat active.txt)
do
  cat <<EOF
  <tr>
    <td><a href="https://www.github.com/io7m/${PROJECT}">${PROJECT}</a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain-openjdk_lts-linux"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main-openjdk_lts-linux"/></a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain-openjdk_current-linux"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main-openjdk_current-linux"/></a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain-openjdk_current-windows"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main-openjdk_current-windows"/></a></td>
  </tr>
EOF
done

cat <<EOF
  </tbody>
</table>
EOF
