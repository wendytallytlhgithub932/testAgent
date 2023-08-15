# Use a Linux distribution as the base image
FROM ubuntu:20.04

# Install Java and other dependencies
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Download the Jenkins agent JAR
RUN wget http://localhost:8080/jnlpJars/agent.jar

# Set up environment variables
ENV JENKINS_URL=http://localhost:8080
ENV JENKINS_SECRET=87285283a87267cbfee233571fe2ae4eb01677e0165949cfe0d1003715163af5
ENV JENKINS_AGENT_NAME=linux java

# Run the Jenkins agent
CMD ["java", "-jar", "agent.jar", "-jnlpUrl", "${JENKINS_URL}/computer/${JENKINS_AGENT_NAME}/jenkins-agent.jnlp", "-secret", "${JENKINS_SECRET}"]
