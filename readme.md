## This reposistory is created with learning purposes for Terraform, focusing on GitHub provider.

## Purpose :

- It provides a simple example of how to use Terraform `github` provider.

## How to install terraform : 

- The information about installing terraform can be found on the HashiCorp website 
[here](https://learn.hashicorp.com/terraform/getting-started/install.html)

## How to use it :

- In a directory of your choice, clone the github repository :
    ```
    git clone https://github.com/martinhristov90/terraformGithub.git
    ```

- Change into the directory :
    ```
    cd terraformGithub
    ```

- Run `terraform init` to download the `github` provider.

- Create a file named `terraform.tfvars` and set the following variables in it :
    ```
    github_token = "YOUR_GITHUB_TOKEN" # Token should have following rights : `repo admin:org admin:public_key admin:repo_hook admin:org_hook user delete_repo admin:gpg_key`.
    github_organization = "YOUR_ORG" # Name of your organization in which the repo to be created in.
    ```

- Run `terraform plan` to see what actions are going to be performed Terraform. Output should look like this :
    ```
    ------------------------------------------------------------------------

    An execution plan has been generated and is shown below.
    Resource actions are indicated with the following symbols:
      + create

    Terraform will perform the following actions:

      + github_repository.testRepo
          id:                 <computed>
          allow_merge_commit: "true"
          allow_rebase_merge: "true"
          allow_squash_merge: "true"
          archived:           "false"
          default_branch:     <computed>
          description:        "This repository is created by using Terraform GitHub provider"
          etag:               <computed>
          full_name:          <computed>
          git_clone_url:      <computed>
          html_url:           <computed>
          http_clone_url:     <computed>
          name:               "repositoryCreatedWithTerraform"
          ssh_clone_url:      <computed>
          svn_url:            <computed>


    Plan: 1 to add, 0 to change, 0 to destroy.

    ------------------------------------------------------------------------
    ```

- Run `terraform apply` to create the `github_repository` resource. As output you should see :
    ```
    github_repository.testRepo: Creation complete after 4s (ID: repositoryCreatedWithTerraform)

    Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

    Outputs:
    testRepoGitURL = git://github.com/NAME_OF_YOUR_ORG/repositoryCreatedWithTerraform.git
    ```
    
- In order to destroy the created resources, you can use `terraform destroy`.