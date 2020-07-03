# Example of the 3rd party terraform provider installation and usage

## Using `terraform-provider-git` for getting GitHub repo branch, commit and tag to show the way terraform install and work with 3rd party providers 

### How to use this provider

- To install this provider, copy and paste this code into your Terraform configuration

```
terraform {
  required_providers {
    git = {
      source = "innovationnorway/git"
      version = "0.1.2"
    }
  }
}
```

- Then, run terraform init

### Install location

```
$ tree .terraform/
.terraform/
├── modules
│   └── modules.json
└── plugins
    ├── registry.terraform.io
    │   ├── hashicorp
    │   │   └── null
    │   │       └── 2.1.2
    │   │           └── darwin_amd64
    │   │               └── terraform-provider-null_v2.1.2_x4
    │   └── innovationnorway
    │       └── git
    │           └── 0.1.2
    │               └── darwin_amd64
    │                   ├── CHANGELOG.md
    │                   ├── LICENSE
    │                   ├── README.md
    │                   └── terraform-provider-git_v0.1.2
    └── selections.json
    ```
