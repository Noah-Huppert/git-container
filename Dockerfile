FROM alpine:latest

# Install Git
RUN apk add --update git openssh-client bash

# Create shared directory
RUN mkdir /root/shared
WORKDIR /root/shared

# Copy entrypoint script
COPY scripts/entrypoint /root/entrypoint

# Copy SSH key
COPY ssh_private_key /root/.ssh/private_key

CMD [ "/root/entrypoint" ]
