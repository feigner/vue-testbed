# Vue Testbed

Quick and dirty Vue VM

## Development

### Requirements

* [Vagrant](http://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Quickstart

After cloning this repo, get a new development environment:

    vagrant up
    
This will provision your new VM, install system requirements, install node, `vue`, `vue/cli` and `vue/cli-init`

### New Project

To bootstrap a new project, ssh into the VM and run:

	vue create hello-world
	
To view the project, start the server and view at `localhost:8080`

	npm run serve
	
Note: even with NFS, auto reloading via polling doesn't work well inside a VM. See below.
	
### Webpack Project	
	
To bootstrap a webpack project:
	
	vue init webpack hello-world
	
NOTE: Before running the dev server, we need to make two changes in order to view our project outside the VM.

Update `package.json` to specify a public address:

	"dev": "webpack-dev-server --inline --progress --public localhost:8080 --config build/webpack.dev.conf.js",
	
Update `config/index.js` setting 'host' to `0.0.0.0`. Set `poll` to `true` if you want live reloading.
	
Finally, to view the project, start the server and view at `localhost:8080`

	npm run dev
