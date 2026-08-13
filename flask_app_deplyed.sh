#!/bin/bash


# Deploy the application and handle the error...

# function to clone the code from github

code_clone(){

	echo "cloning the app code..."

	if [[ -d "flask-notes-app-for-shell_scripting-project" ]]; then
	 
		echo "already exists the directory...skipping cloningn..."
	else
		

		git clone https://github.com/chandandhakde/flask-notes-app-for-shell_scripting-project.git

		
	fi
}

#function to install requirements

install_req(){

	echo "install all dependencies..."

	sudo apt-get update && sudo apt-get install -y docker.io nginx docker-compose

}

#function to restart requirements

restart_req(){

	echo "waiting for restarting requirements..."
	
	sudo chown "$USER" /var/run/docker.sock ||
		{
			echo "failed to changed the ownership of docker.sock"

			returen 1
		}
	#sudo systemctl enable docker
	#sudo systemctl enable nginx 
	#sudo systemctl restart docker
}




# function to deploy the app

deploy(){

	
 	echo "......first of all building the docke iamge......."

	#docker build -t flask-notes-app:v.1 .

	 echo "===== REMOVING OLD CONTAINER ====="
        #docker rm -f flask-container >/dev/null 2>&1 || true


	echo ".........starting the new container......"
	
	#docker run -d -p 80:5000 --name flask-container flask-notes-app:v.1
	
	 echo "===== DEPLOYING USING DOCKER COMPOSE ====="

	    docker compose down --remove-orphans 2>/dev/null || true

       	    docker compose up -d --build

}

# main deployment script...

echo "....Deployment started........."

code_clone

# move into project directory
cd flask-notes-app-for-shell_scripting-project || exit 1



# install_req

if ! install_req; then

	exit 1

fi

# required restart

if ! restart_req; then

	exit 1 
fi

#deploy

if ! deploy; then 
	echo "failed the deployment...mailing the admin..."

	#sendmail
	exit 1

fi


echo "deployment successfull............................................................................"
