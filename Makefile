default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=${COMPONENT}

all: frontend postgres auth-service portfolio-service analytics-service

frontend:
	ansible-playbook -i frontend-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=frontend
postgres:
	ansible-playbook -i postgres-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=postgres
auth-service:
	ansible-playbook -i auth-service-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=auth-service
portfolio-service:
	ansible-playbook -i portfolio-service-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=portfolio-service
analytics-service:
	ansible-playbook -i analytics-service-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=analytics-service

