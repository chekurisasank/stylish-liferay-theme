node {
   def commit_id
   stage('Preparation') {
     checkout scm
     sh "git rev-parse --short HEAD > .git/commit-id"                        
     commit_id = readFile('.git/commit-id').trim()
   }
   
  
   
   stage('build') {
	   def myBildContainer = docker.image('node:10.9')
	   myBildContainer.pull()
	   myBildContainer.inside{
		   sh 'npm config set strict-ssl false'
		   //sh 'npm config set registry http://registry.npmjs.org/'
		   sh 'npm install'
		   sh "gulp build "
	   }  
   }
   
 }
