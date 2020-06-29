#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent

dl_ver() {
    local ver=$1
    local jar="jmx_prometheus_javaagent-${ver}.jar"
    local url="${MIRROR}/${ver}/${jar}"
    local lfile="${DIR}/${jar}"
    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi
    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-0.13.0}
