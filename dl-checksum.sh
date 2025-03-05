#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/prometheus/jmx_exporter/releases/download

dl_ver() {
    local ver=$1
    local jar="jmx_prometheus_javaagent-${ver}.jar"
    # https://github.com/prometheus/jmx_exporter/releases/download/1.1.0/jmx_prometheus_javaagent-1.1.0.jar
    local url="${MIRROR}/${ver}/${jar}"
    local lfile="${DIR}/${jar}"
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-1.1.0}
