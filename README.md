# Git Container
Container with a Git client.

# Table Of Contents
- [Overview](#overview)
- [Build](#build)
- [Run](#run)

# Overview
A Git container with a Git client.  

Note: This is probably a bad idea. Since it builds a Docker container with your
SSH private key and private key password.

# Build
1. Copy your SSH private key into the repository directory with a name 
   of `ssh_private_key` in the 
3. Set the following environment variables:
	- `SSH_NAME`: Your name
	- `SSH_EMAIL`: Your email
	- `SSH_PASSWORD`: Private key password
2. Run `make build`

**!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**  
**NEVER** push this container to a registry. As it will contain your SSH
private key.  
**!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!**  

# Run
```
./bin/git-container
```
