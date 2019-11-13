## DS_Store Patrol

Working with MacOS users? Tyred of .DS_Store files everywhere in your repo?

> Here comes DS_Store Patrol!


### Description

Jokes apart, this is a simple github action to check whether a `.DS_Store` file has been added in your repo.

If you forget to add the `.DS_Store` file in your `.gitignore`, just add this action in your workflow 😃


### Example configuration

In your repository, configure your workflow under `.github/workflows/ds-store-patrol.yml`:


```yml
name: DS_Store Patrol

on: push

jobs:
  example-workflow:
    name: Example workflow for DS_Store Patrol
    runs-on: debian-latest

    steps:

    - name: Checkout repository contents
      uses: actions/checkout@master

    - name: Checking for .DS_Store files
      uses: Maxelweb/ds-store-patrol@releases/v1

```

### License and support

MIT License

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/H2H6VK9N)