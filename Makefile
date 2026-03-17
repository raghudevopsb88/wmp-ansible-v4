default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.raghudevopsb88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=${COMPONENT}
