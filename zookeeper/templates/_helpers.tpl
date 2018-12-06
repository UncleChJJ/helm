{{- define "zookeeper.appname" -}}
{{- default .Chart.Name .Values.appname -}}
{{- end -}}

{{- define "zookeeper.namespace" -}}
{{- default "default" .Values.namespace | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
{{- define "zookeeper.zoo_server" -}}
{{- "server.0={{ template "zookeeper.appname" . }}-zk-0.helmtest-zk-cluster.chenj.svc.cluster.local:2888:3888,server.1=helmtest-zk-1.helmtest-zk-cluster.chenj.svc.cluster.local:2888:3888,server.2=helmtest-zk-2.helmtest-zk-cluster.chenj.svc.cluster.local:2888:3888" -}}
{{- end -}}
*/}}
