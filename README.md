This starter kit will let you build and run your own Rails container.
You will need to have [Docker](https://www.docker.com/) and [Make](https://www.gnu.org/software/make/) installed.

---

Add the `Makefile` an `Dockerfile` to your app's root folder and run:

* `make` - to build the container
* `make run` - run the container

Once Rails boots your app will be available at the usual: http://localhost:3000

---

Also for ease of use some utility commands:
* `make attach` - start a bash session within the container
* `make console` - start a Rails console within the container
* `make start` - start previously created container

---

This build is based on the official Ruby Docker image and runs Ruby 2.2.1.


Enjoy!  
Val  
[@webmadespecial](https://twitter.com/webmadespecial)

---

Useful links:

[Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)
[Official Ruby Docker repo](https://registry.hub.docker.com/_/ruby/)
