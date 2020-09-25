# LatexCV

A Latex class to generate a professional-looking curriculum. You can see it in action [here](./src/Curriculum.pdf).

## Usage

### Prerequisites
- **Docker**: for ease of installation and development.
- **Git**: version control is a good practice even outside of development.

### Customization

Unless you are looking to impersonate me, you will probably want to update the CV to reflect your career and skills. Fortunately you can use this class without being familiar with Latex. Just open `./src/Curriculum.tex` on your favourite text editor and you will find it is mostly a matter of replacing my details with yours and mimicking existing sections to obtain the curriculum you are looking for.

Nonetheless, if you want a more detailed description of the custom commands the latex class introduces, head over to [Commands reference](#commands-reference)


### Compilation

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


## Commands reference

`./src/Curriculum.cls` introduces 4 commands that make up the core of the curriculum:
  - `\makeheading`: which creates the header that lists your contact details. These details need to be provided before the command with:
    - `\name{your-name}`
    - `\phone{(+11) 123 456 789}`
    - `\email{hi@me.com}`
    - `\githubaccount{username}` (the class will create the link for you, you just need to specify your username)
    - `\linkedin{username}` (the class will create the shortened link for you, you just need to specify your username)
  - `\section{title}{content}`: which marks a section of the CV, Latex will do its best so that any given section does not spill over between different pages.
  - `\workexp{position-title}{from-to}{company}{city}{country}{description bullet points}`: used to show a work position or experience. The content is with bullet points, each bullet point needs to be prefaced with `\item`
  - `\educ{diploma-name}{from-to}{institution}{city}{country}{marks}{description}`: similar to `\workexp` but with a format more suited for education entries.

Feel free to modify or take inspiration from them to suit your needs.

## Contact
If you found this repository useful and want to contact me, you can reach me at [sago.ant@gmail.com](mailto:sago.ant@gmail.com). Alternatively, if you have some an idea and want to see it here I am happy to accept [pull requests](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
