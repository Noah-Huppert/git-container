# Git Container
Container with a Git client.

# Table Of Contents
- [Overview](#overview)
- [Build](#build)
- [Run](#run)

# Overview
A Git container with a Git client.  

# Build
1. Copy your SSH private key into the repository directory with a name 
   of `ssh_private_key` in the 
2. Run `make build`

**!!!!!!!!**  
**NEVER** push this container to a registry. As it will contain your SSH
private key.
**!!!!!!!!**  

# Run
```
./bin/git-container
```
