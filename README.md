# potential-shared-file-system
This is to test if a file can have different content for different branches and maintain its content depending on the branch. This is a work around, the idea is to use `git update-index --assume-unchanged serverless.yml` to exclude serverless.yml file from version tracking while remaining inside the git repository.
