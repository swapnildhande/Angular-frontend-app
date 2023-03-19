#Creation and deployment of Angular frontend app using docker.
#Requirements:
1. Nodejs 
	cmd to install Nodejs
	-$ sudo apt install nodejs
2. NPM
	cmd for NPM
	-$ sudo apt install npm
3. Angular CLI
	cmd to install Angular CLI
	-$ sudo npm install -g @angular/cli
4. V S Code
5. Docker desktop
6. NGINX

Step 1: 	Install all dependencies and packages

 ![0-1](https://user-images.githubusercontent.com/117855172/226185848-adc122c8-fafd-4383-9a1d-95034a0748d2.jpg)

Step 2: 	Create new angular project with all default settings
	cmd for that:
	```
  -$ ng new angular-app --defaults
  ```
 ![image](https://user-images.githubusercontent.com/117855172/226185915-a81798f2-f7aa-40b2-a191-b4b625f60f22.png)

Step 3: Run the app
	```
  -$ cd angular app
	-$ ng serve
  ```

 ![4](https://user-images.githubusercontent.com/117855172/226185938-a679202f-e520-40dd-b5b0-223a7b1363fd.jpg)

![5](https://user-images.githubusercontent.com/117855172/226185946-bf21086b-89ae-4f57-ba8d-f5d65b0c5ad6.jpg)

Step 4: Our app is running on port 4200 directly
 
![6](https://user-images.githubusercontent.com/117855172/226185956-f1a11e55-2728-48e7-92cd-75e9496f6d03.jpg)

Step 5: Now same project we will deploy using docker and NGINX
For that we will open our project in V S code and create a Dockerfile for image building, 
or we can also do it directly into terminal itself.
 
![Dockerfile](https://user-images.githubusercontent.com/117855172/226185993-722c34e4-8c84-4644-9773-e8d89d526122.jpg)

Step 6: Build the docker-image from it
 
 ![7](https://user-images.githubusercontent.com/117855172/226186027-d60157cb-6a2e-45cd-8516-e7d318927a63.jpg)

![8](https://user-images.githubusercontent.com/117855172/226186031-6820a71a-6fed-4169-8c89-55287500ca4b.jpg)

Step 7: Run Container

![container-run](https://user-images.githubusercontent.com/117855172/226186040-2504f792-57d7-4069-9acd-0782ef4428a0.jpg)

Step 8: App is running on port 80 inside docker container through NGINX web server
 
 ![output](https://user-images.githubusercontent.com/117855172/226186049-86fcf007-1958-470f-ae3b-e989bf8ea4dd.jpg)

