{{/*
Expand the name of the chart.
*/}}
{{- define "gel.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gel.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "gel.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gel.labels" -}}
helm.sh/chart: {{ include "gel.chart" . }}
{{ include "gel.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
application.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
application.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/service-type: {{ .Values.serviceType }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gel.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gel.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gel.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "gel.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Template the Postgres cluster name used by gel.
*/}}
{{- define "gel.pgClusterName" -}}
{{- include "gel.fullname" . -}}-postgres
{{- end }}
