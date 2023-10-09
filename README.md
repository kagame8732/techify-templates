# Techify

A CLI tool for developers to get started on projects faster

# Fasta (Techiy)

A Command Line Interface (tool) to help developers set up projects faster with automatically installed dependencies and dockerized boilerplates.

## Installing / Getting started

A quick introduction of the minimal setup you need to get Fasta up & running.
Make sure you have yarn installed. If you're using Node 16.10 and above, use corepack.
So, `corepack enable`, `npm i -g corepack` then  `yarn init 2`. If you're on windows, make sure you are running as administrator.



```shell
npm i -g get-start-fast
```

The package manager loads up fasta and you’re good to go.

Make sure the scope of installation encompasses the folder in which you will start your project.


## Optional Initial Configuration

You should have `Docker` installed and the daemon engine running before starting a project that needs to be dockerized (Laravel and Django/Python supported).
Install [Docker](https://docker.com/get-started) from the official website.
## Developing/Run
To set start a new project using faster, use `fasta-generate` in the command line of your choice. Powershell is strongly recommended.

```shell
fasta-generate
```
A number of choices will be prompted

```shell
? Please choose the project template you want to use (Use arrow keys)
> django 
  laravel 
  mern 
  mevn 
  pern 
```

You will be asked to enter a project name

```shell
? Project name: 
```
The package will create the project, install dependencies and run a container image where applicable.

-For MERN and PERN, use `npm run dev` for the backend or `npm run start` for React app.

## Containerizing (tba)

To containerize your project, use
docker …
Make sure `Docker` is installed and the daemon engine is running.

## Features

How fast is Fasta

* Set up MERN, PERN, MEVN, Django and Laravel projects
* Dockerize projects for effective deployment anywhere

## Configuration

Choose which stack to start with for the project.

## Contributing

If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are warmly welcome.


