- uses: Azure/k8s-deploy@v1
  with:
    namespace: 'myapp'
    manifests: |
        jenkins.yaml
    images: 'contoso.azurecr.io/myapp:${{ event.run_id }}'
    kubectl-version: 'latest'
