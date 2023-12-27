# configuring-dependabot-security-updates-for-github-repository

```
Enables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see "Configuring automated security fixes".
```

[Configuring automated security fixes](https://docs.github.com/articles/configuring-automated-security-fixes)

reference: [configuring-dependabot-security-updates-for-github-repository](https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#enable-automated-security-fixes)

## How code works

* requires owner name / organization name
* requires repository name

```
These parameters are received from the github workflow UI. These are then passed to restAPI in bash script
``` 

* The credential used is ``` FINE GRAINED PERSONAL ACCESS TOKEN ```