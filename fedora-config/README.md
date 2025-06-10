# fedora-config

This is a (constant) work in progress.

The goal of this project is to automate the configuration of my personal Fedora machine using Ansible. 
The playbook sets up system settings, installs and configures essential packages, applies hardening measures, and ensures a consistent development environment.


### Features
- Secure system defaults (umask, sysctl, SSH, cron)
- DNF and Flatpak configuration
- Core package installation (CLI tools, Hyprland, Firefox, etc.)
- Rust and dotfile setup
- Unused services and protocols disabled

> Designed for repeatable and fast post-install setup.


### Environment
- **Fedora**: 42
- **Ansible**: 2.18.6
