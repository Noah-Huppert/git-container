FROM alpine:latest

# Install Git
RUN apk add --update git openssh-client bash expect

# Create shared directory
RUN mkdir /root/shared
WORKDIR /root/shared

# Copy entrypoint script
COPY scripts/entrypoint /root/entrypoint

# Copy SSH key
COPY ssh_private_key /root/.ssh/private_key

# Arguments
ARG SSH_NAME
ARG SSH_EMAIL
ARG SSH_PASSWORD

RUN echo "$SSH_PASSWORD" > /root/ssh_password

RUN git config --global user.name "$SSH_NAME"
RUN git config --global user.email "$SSH_EMAIL"

CMD [ "/root/entrypoint" ]
