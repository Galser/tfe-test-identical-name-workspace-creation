# tfe-test-identical-name-workspace-creation
Repo to test possibility of creating in TFE two (2) workspaces with IDENTICAL names (which should not be possible according to our documentation)

# Hypothesis

According to our manuals here : https://www.terraform.io/docs/cloud/workspaces/creating.html :

> Each new workspace needs a unique name, and needs to know where its Terraform configuration will come from.

And from here : 

> Workspace names need to be 90 characters or less and can only include letters, numbers, -, and _.

> The best way to make names that are both unique and useful is to combine the workspace's most distinguishing attributes in a consistent order. Attributes can be any defining characteristic of a workspace — such as the component being managed, the environment it runs in, and the region it is provisioned into.

So there is no **BOLD** requirement for it to be unique, yet normally when you are trying to create workspace with the same name it fails.

While we have a screenshot : 

# Test

# TODO

- [x] save historical evidence
- [ ] make testing code
- [ ] test
