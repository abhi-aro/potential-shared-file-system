# potential-shared-file-system

## using git commands
This is to test if a file can have different content for different branches and maintain its content depending on the branch. This is a work around, the idea is to use `git update-index --assume-unchanged serverless.yml` to exclude serverless.yml file from version tracking while remaining inside the git repository.


The above option would not work as it does not take into consideration that people are dumb and would not do it everytime they clone the repo and it always pulls the changes, so not worth testing.

## Custom Bash command
Create a custom bash file to replace the contents of serverless.yml before depoying.

The above option works, will have to check if it works with serverless deployment in jenkins.