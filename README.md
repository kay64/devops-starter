# DevOps Starter

Starter project that allows to create new infrastructure. The main accent was put on usage of K8S. Currently only AWS configuration implemented.

## Process

Starting of infrastructure follows the next process:
1. Provisioning. Provisioning necessary AWS resources with terraform. All related scripts are places under `provision` directory. The structure of project is highly inspired by [Ami Mahloof's from DoIT team blogpost](https://blog.doit-intl.com/refactor-terraform-into-modules-the-right-way-7bce4d57d66a).
2. Deploying DevOps tools.
