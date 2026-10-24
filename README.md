# Terraform Azure Network Interface (NIC)

A reusable Terraform module to create and manage Azure Network Interfaces (NICs) with configurable subnet integration and private IP allocation.

## Overview

An Azure Network Interface (NIC) connects an Azure Virtual Machine to a Virtual Network, enabling network communication through a configured subnet and private IP address.

This Terraform module helps provision NICs using reusable and maintainable Infrastructure as Code (IaC).

## Key Features

- Create Azure Network Interfaces.
- Integrate NICs with existing Azure subnets.
- Configure static or dynamic private IP allocation.
- Support reusable Terraform module architecture.
- Simplify Azure infrastructure provisioning and management.

## Architecture

```text
Azure Resource Group
        |
   Virtual Network
        |
      Subnet
        |
 Network Interface (NIC)
        |
 Azure Virtual Machine
```

## Prerequisites

- Terraform installed
- Azure subscription
- AzureRM provider configured
- Existing Azure Resource Group
- Existing Virtual Network and Subnet

## Usage

```hcl
resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}
```

### Configuration Explanation

| Argument | Description |
|---|---|
| `name` | Name of the Network Interface |
| `location` | Azure region for the NIC |
| `resource_group_name` | Resource group containing the NIC |
| `subnet_id` | ID of the subnet connected to the NIC |
| `private_ip_address_allocation` | Specifies `Dynamic` or `Static` private IP allocation |

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview changes:

```bash
terraform plan
```

Deploy the resource:

```bash
terraform apply
```

## Cleanup

Review the proposed changes before removing resources:

```bash
terraform destroy
```

## Author

**Sharanjeet Kaur**

GitHub: [@sharanjeetaulakh](https://github.com/sharanjeetaulakh)

## License

This project is available under the MIT License if a corresponding `LICENSE` file is included in the repository.
