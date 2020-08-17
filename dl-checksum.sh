#!/usr/bin/env sh
set -e

dl_ver() {
    local ver=$1
    local tgz=collectd-${ver}.tar.bz2
    printf "  '%s': sha256:%s\n" $ver $(curl -s https://collectd.org/files/SHA256SUM | fgrep $tgz | awk '{print $1}')
}

dl_ver ${1:-5.11.0}
