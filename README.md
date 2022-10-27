> # Tesseract service

> Given : You are given an application with APIs which extracts text from images. 

>  Task : You have to build a lightweight docker container which will map port 4000 of your app to your machine. 

Since the application required tessaract-ocr and libg11, it was too much of a hassle using alpine as the base, but needs 
more expertimentation so that the size of image becomes even smaller 

> You also have to create a kubernetes manifest file which can deploy replica sets in a cluster.

The manifest file is present as manifest.yaml
and the following command will install and make it work once minikube is installed with docker as the driver

sudo kubectl apply -f manifest.yaml
sudo kubectl port-forward --address 0.0.0.0 svc/chris-tess-svc 80:4000

I used aws ec2  intance so was able to get the public ip easily
 
> Create a requirements.txt file for this repo. 

Done 

> Create a contract of rest api read_ocr.

apicontract.yaml contains the rest api contract details


The solution will be evaluated by running the manifest file on minikube. 

> Note:
> Please download this repo and email a zip file over email. 

> Extra marks will be given for : 
- setting up CI/CD files for the same app. 
1) docker build
2) docker push
3) kubectl apply 




> - adding logging functionality in repo.

I have added some logging functionality in views.py

> Dependencies :

> opencv-python==4.4.0.46

> pytesseract==0.3.7

I was forced to use the latest versions for the above software due to incompatibilities

TESTING
I used https://reqbin.com/

and sent json POST request for testing

{"image":"https://thegoalchaser.com/wp-content/uploads/inspiring-words-that-start-with-a-735x951.png", 
 "lang":"eng",
 "config":""}



