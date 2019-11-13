# DS_Store Patrol

Tyred of .DS_Store files everywhere in your repo?

> Here comes DS_Store Patrol! 👮‍♂️👮‍♀️


### Description

This is a simple **github action** to check whether a `.DS_Store` file has been added in your repo.

If you forget to add the `.DS_Store` file in your `.gitignore`, just add this action in your workflow 😃

### Current version

> v1.0


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

No input is needed. The entire repository will be checked.

### License and support

MIT License - Developed by Maxelweb
