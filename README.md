[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Container&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/antsago/LatexCV)

# LatexCV

A Latex class to generate a professional-looking curriculum. You can see it in action [here](./src/Curriculum.pdf).

## Usage

The easiest way to use the repository's devcontainer (which requires Docker and vscode). Opening the repository in vscode should prompt you to access it, but click on the tag above if not. Once in the repo, navigate to the `./src` folder and execute the command `pdflatex Curriculum.tex`. The compiled pdf should be in `./src/Curriculum.pdf`

### Customization

Unless you are looking to impersonate me, you will probably want to update the CV to reflect your career and skills. Fortunately you can use this class without being familiar with Latex. Just open `./src/Curriculum.tex` on your favourite text editor and replace the contents. You can also mimick the existing sections to obtain the curriculum you are looking for.

Nonetheless, if you want a more detailed description of the custom commands the latex class introduces, head over to [Commands reference](#commands-reference)

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
