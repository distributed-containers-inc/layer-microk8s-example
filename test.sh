#!/usr/bin/env bash

pod_ip="$(microk8s.kubectl get po example-pod -o jsonpath={.status.podIP})"
echo "Pod is at $pod_ip"

resp_1="$(curl http://${pod_ip}:8080)"
echo "response 1 is: $resp_1"

resp_2="$(curl http://${pod_ip}:8080/some/path)"
echo "response 2 is: $resp_2"

