#Ansible_Server
output "ansible_public_ip" {
    value = module.ansible_server.ansible_server.public_ip 
}

#Jenkins_Server
output "jenkins_public_ip" {
    value = module.jenkins_server.jenkins_server.public_ip 
}

#APP_Server
output "app_public_ip" {
    value = module.app_server.app_server.public_ip 
}
