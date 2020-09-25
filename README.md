# LatexCV

A professional-looking curriculum using Latex and Docker and version-controlled with git. You can see it in action [here](./src/Curriculum.pdf). 

## Usage

The project uses Docker to avoid having to install all the quite-sizable dependencies everytime the curriculum needs to be updated. It also introduces a docker-compose file to declare the configuration of the container in a readable configuration:
  - If you have Docker Engine and Docker Compose you only need to do:
    ```
    docker-compose run --rm latex
    ```
  - If you only have Docker Engine you can still do:
    ```
    docker run --rm -i --net=none -v $PWD/src:/data blang/latex:ubuntu pdflatex Curriculum.tex 
    ```

After running either command at the root of the project you will find your recompiled CV at `./src/Curriculum.pdf`


## Customizing the CV

To use <project_name>, follow these steps:

```
<usage_example>
```

Add run commands and examples you think users will find useful. Provide an options reference for bonus points!

## Contributing to <project_name>
<!--- If your README is long or you have some specific process or steps you want contributors to follow, consider creating a separate CONTRIBUTING.md file--->
To contribute to <project_name>, follow these steps:

1. Fork this repository.
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

Alternatively see the GitHub documentation on [creating a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
