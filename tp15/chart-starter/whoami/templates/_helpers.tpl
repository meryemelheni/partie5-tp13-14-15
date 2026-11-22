{{- define "whoami.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "whoami.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "whoami.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
