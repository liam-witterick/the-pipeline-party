# the-pipeline-party

Welcome to The Pipeline Party, a repository dedicated to automating the build, test, and deployment process using multiple CI/CD technologies. Here, you'll find a variety of pipeline scripts that demonstrate how to achieve the same goal using different tools and techniques.

## Pipeline Scripts

The following pipeline scripts are included in this repository:

- GitHub Actions pipeline script (`.github/workflows/build.yml`)
- GitLab CI pipeline script (`.gitlab-ci.yml`)
- Jenkins pipeline script (`Jenkinsfile`)
- Azure DevOps pipeline script (`azure-pipelines.yml`)
- AWS CodePipeline script (`codepipeline-script.yml`)
- TravisCI pipeline script (`.travis.yml`)
- CircleCI pipeline script (`.circleci/config.yml`)

Each pipeline script is designed to automate the build, test, and deployment of a simple application, but you can customize the scripts to fit your needs.

### Important Note

GitHub Actions and CircleCI both have the ability to automatically create a pipeline based on a config file in your repository.

For GitHub Actions, you can create a pipeline by creating a YAML file in the .github/workflows directory. The pipeline will be triggered whenever a push to your repository is detected.

For CircleCI, you can create a pipeline by creating a YAML file in the .circleci/config.yml directory. The pipeline will be triggered whenever a push to your repository is detected.

Other CI/CD technologies, like GitLab CI, Jenkins, Azure DevOps, AWS CodePipeline, and TravisCI, do not automatically create a pipeline when you push code to your repository. Instead, you have to manually create a pipeline in the web UI or through the command line, and then connect it to your repository.

## Makefile

Included in this repository is a Makefile, which automates the build and test steps of the pipeline. The Makefile is a simple way to automate repetitive tasks and can be a useful tool for streamlining your pipeline.

## Source Code

The source code for the application being built, tested, and deployed is stored in the `<your-source-code>` directory. Feel free to use this code as a starting point for your own projects, or use your own source code by replacing the contents of this directory.

## Contributing

If you have a pipeline script for a different CI/CD technology or an improvement to one of the existing scripts, I'd love to see it! Please open a pull request to contribute to this repository.

## Getting Started

1. Clone this repository: `git clone https://github.com/liam-witterick/the-pipeline-party.git`
2. Change into the repository directory: `cd the-pipeline-party`
3. Choose the pipeline script you'd like to use and customize it to fit your needs
4. Push your changes to GitHub and watch your pipeline come to life!
