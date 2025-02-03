# Ansible Playbooks for System Configuration

This repository contains Ansible playbooks for configuring and managing various systems I own. These playbooks help automate setup, maintenance, and customization across multiple machines.

## Features

- Automated provisioning and configuration
- Support for multiple system types
- Custom role-based configurations
- Secure and repeatable deployments

## Usage

1. Ensure Ansible is installed on your control machine.

2. Clone this repository:
    ```bash
        git clone https://github.com/robpellegrin/AnsiblePlaybooks
        cd AnsiblePlaybooks
    ```

2. Update the inventory file to match your system setup.

3. Run a playbook:
    ```bash
    ansible-playbook -i inventory playbook.yml
    ```
