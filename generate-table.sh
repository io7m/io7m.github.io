#!/bin/sh

cat <<EOF
<table class="builds">
  <thead>
    <tr>
      <th>Project</th>
      <th>OpenJDK Current, Linux</th>
      <th>OpenJDK LTS, Linux</th>
      <th>OpenJDK Current, Windows</th>
      <th>OpenJDK LTS, Windows</th>
    </tr>
  </thead>
  <tbody>
EOF

for PROJECT in $(cat active.txt)
do
  cat <<EOF
  <tr>
    <td><a href="https://www.github.com/io7m/${PROJECT}">${PROJECT}</a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain.linux.temurin.current"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main.linux.temurin.current"/></a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain.linux.temurin.lts"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main.linux.temurin.lts"/></a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain.windows.temurin.current"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main.windows.temurin.current"/></a></td>
    <td><a href="https://github.com/io7m/${PROJECT}/actions?query=workflow%3Amain.windows.temurin.lts"><img src="https://img.shields.io/github/workflow/status/io7m/${PROJECT}/main.windows.temurin.lts"/></a></td>
  </tr>
EOF
done

cat <<EOF
  </tbody>
</table>
EOF
