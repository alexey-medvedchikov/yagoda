#!/bin/sh

set -e

exec java ${JVM_OPTS:--Xmx256m} -jar /opt/prometheus/jmx_prometheus_httpserver.jar \
	${JMX_EXPORTER_PORT:-9100} "$@"

