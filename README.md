# DS_Store Patrol

Tired of .DS_Store files everywhere in your repo?

> Here comes DS_Store Patrol 👮‍♂️👮‍♀️


### Description

This is a simple **Github Action** to check whether a `.DS_Store` file has been added in your repo.

If you forget to add the `.DS_Store` file in your `.gitignore`, just add this action in your workflow 😃

### Current version

> v1


### Example configuration

In your repository, configure your workflow under `.github/workflows/ds-store-patrol.yml`:


```yml
name: DS_Store Patrol

on: [push, pull_request]

jobs:
  example-workflow:
    name: Example for DS_Store Patrol
    runs-on: debian-latest

    steps:

    - name: Checkout repository contents
      uses: actions/checkout@v1

    - name: Checking for .DS_Store files
      uses: Maxelweb/ds-store-patrol@v1

```

No input is needed. The entire repository will be checked using the `find` command.

### License

MIT License - Developed by [Mariano Sciacco](http://git.marianosciacco.it)
