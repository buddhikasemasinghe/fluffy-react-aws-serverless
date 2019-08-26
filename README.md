# YET ANOTHER REACT APP :)

<p>This is another React app whch uses TravisCI pipeline and deploy the app in AWS S3.


###Steps
 #### Step 01
 * Make sure you have the access to AWS 
 * Create a S3 bucket and  create new IAM user having S3 programmetical access
 * Docker installed in your local environment


#### Step 02
* Create directory <br> `mkdir my-fanky-website`
* Create react application  <br> `npx create-react-app .`
* Create test Dockefile and production docker file <br> `touch Dockerfile.test` <br> `touch Dockerfile`
* Build your test docker container 
  `docker build --tag my-fanky-website-test-container --file Dockerfile.test .` 
* Run your test container
  `docker run my-fanky-website-test-container`
* Build the production container
  `docker build --tag my-fanky-website .`