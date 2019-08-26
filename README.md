# YET ANOTHER REACT APP :)

<p>This is another React app whch uses TravisCI pipeline and deploy the app in AWS S3.


### Steps
 #### Step 01
 * Make sure you have the access to AWS 
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

#### Step 03
 * Create a S3 bucket 
   * Enable it as static web hosting
   * Save bucket name and URL
 * Create IAM user with S3 programmetical access..
   * Save Access key ID and secret key (**Note. It will show only one time therefore export it as a CSV.** )
 * Run the production container with the AWS credentials provided.
   `docker run --env AWS_ACCESS_KEY_ID=key --env AWS_ACCESS_SECRET_KEY=secret --env AWS_REGION=ap-southeast-2 my-fanky-website`