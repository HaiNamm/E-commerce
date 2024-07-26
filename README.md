## APPLICATION INTERFACE
![home](https://github.com/user-attachments/assets/2101b96d-a38c-4f9c-85e3-2b6903118c8a)
## OPERATION METHODS
At the *server* branch in github is used to set up the server.

At the *main* branch in github is used to build the E-Commerce application and set up the CI (Continuous Integration) system.

At the *master* branch in github is used to set up CD (Continuous Delivery) system.

### The way of operation:
- Server is set up using Terraform tool.
- E-Commerce application built and pushed code to Github repo.
- CI pipeline is set up so that every time a dev commits code on github, Jenkins will automatically pull the code.
- After pulling the code, Jenkins will run the commands to build the image and push the image to DockerHub.
- CD pipeline is set up in Jenkins using Ansible script and Docker to deploy the application.
## TECHNOLOGIES USED 
1. Figma
2. Github
3. Terraform
4. Amazon Web Services (AWS)
5. Google Cloud Platform (GCP)
6. Jenkins
7. Ansible
8. Docker
9. Flutterflow
