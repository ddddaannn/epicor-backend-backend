#!/bin/bash

az ad sp create-for-rbac --name "dann-terraform-epicor-sp" \
  --role="Contributor" \
  --scopes="/subscriptions/<your-subscription-id>" \
  --sdk-auth
