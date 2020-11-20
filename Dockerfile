FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
ENV TERRAFORM_VERSION=0.13.4
RUN apk --update add openjdk7-jre curl unzip wget
RUN gcloud components install app-engine-java kubectl
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin
RUN curl --location https://github.com/accurics/terrascan/releases/download/v1.1.0/terrascan_1.1.0_Darwin_x86_64.tar.gz --output terrascan.tar.gz && \
	tar -xvf terrascan.tar.gz && install terrascan /usr/local/bin