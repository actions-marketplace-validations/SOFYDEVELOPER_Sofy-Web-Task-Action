set -ex
echo "Project ID "${project_id}""


curl --location "https://public.sofy.ai/webagent-service/public/prompt/execute" \
--header "x-sofy-web-auth-key: ${subscription_key}" \
--header "Content-Type: application/json" \
