#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

SCRIPT_DIR=$(dirname -- "$(readlink -f "${BASH_SOURCE[0]}" || realpath "${BASH_SOURCE[0]}")")

declare -A adapters
adapters["istio"]=meshplay-istio:10000
adapters["linkerd"]=meshplay-linkerd:10001
adapters["consul"]=meshplay-consul:10002
adapters["octarine"]=meshplay-octarine:10003
adapters["nsm"]=meshplay-nsm:10004
adapters["network_service_mesh"]=meshplay-nsm:10004
adapters["kuma"]=meshplay-kuma:10007
adapters["cpx"]=meshplay-cpx:10008
adapters["osm"]=meshplay-osm:10009
adapters["open_service_mesh"]=meshplay-osm:10009
adapters["traefik-mesh"]=meshplay-traefik-mesh:10006
adapters["traefik_mesh"]=meshplay-traefik-mesh:10006

main() {
	local service_mesh_adapter=
	local service_mesh=
	local mesh_deployed=

	parse_command_line "$@"

	shortName=$(echo ${adapters["$service_mesh"]} | cut -d '-' -f2 | cut -d ':' -f1)

	# docker containers
	docker network connect bridge meshplay_meshplay_1
	docker network connect minikube meshplay_meshplay_1
	docker network connect minikube meshplay_meshplay-"$shortName"_1
	docker network connect bridge meshplay_meshplay-"$shortName"_1

	meshplayctl system config minikube -t ~/auth.json

	# load balancer
	minikube tunnel &> /dev/null &
	sleep 10

	# deploys the service mesh if not present
	if [[ $mesh_deployed != "true" ]]
	then
		echo "Deploying $service_mesh..."
		meshplayctl mesh deploy --adapter $service_mesh_adapter -t ~/auth.json $service_mesh --watch
		sleep 30
	fi

	meshplayctl mesh validate --spec "smi" --adapter $service_mesh_adapter -t ~/auth.json --watch
	echo "Uploading results to cloud provider..."
	sleep 20
}

parse_command_line() {
	while :
	do
		case "${1:-}" in
			--service-mesh)
				if [[ -n "${2:-}" ]]; then
					service_mesh=$2
					service_mesh_adapter=${adapters["$2"]}
					shift
				else
					echo "ERROR: '--service-mesh' cannot be empty." >&2
					exit 1
				fi
				;;
			--mesh-deployed)
				if [[ -n "${2:-}" ]]; then
					mesh_deployed=$2
					shift
				else
					echo "ERROR: '--mesh-deployed' cannot be empty." >&2
					exit 1
				fi
				;;
			*)
				break
				;;
		esac
		shift
	done
}

main "$@"
