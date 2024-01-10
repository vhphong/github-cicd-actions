# Read Me First
The following was discovered as part of building this project:

* The original package name 'com.pnk.github-cicd-actions' is invalid and this project uses 'com.pnk.githubcicdactions' instead.

# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.2.1/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.2.1/maven-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/3.2.1/reference/htmlsingle/index.html#web)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)

### References
* SpringBoot - Build CI/CD Pipeline Using GitHub Actions | Build & Push Docker Image | JavaTechie
 https://www.youtube.com/watch?v=NppkHKvnrqc
* Docker Build & Push Action https://github.com/marketplace/actions/docker-build-push-action
* How to fix POST /repos/…/check-runs 403 error on GitHub Action workflow https://seekdavidlee.medium.com/how-to-fix-post-repos-check-runs-403-error-on-github-action-workflow-f2c5a9bb67d

### Steps
```shell
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Try the new cross-platform PowerShell https://aka.ms/pscore6

PS C:\Users\vhpho> docker pull phongvo0222/github-cicd-actions-images
	Using default tag: latest
	latest: Pulling from phongvo0222/github-cicd-actions-images
	5262579e8e45: Already exists
	0eab4e2287a5: Already exists
	7c002e8f6062: Already exists
	507f933c2b6c: Pull complete
	Digest: sha256:5d6f536db84748caf3a47715a477552bf280c922b87f6acc5ea7ceca99211a4d
	Status: Downloaded newer image for phongvo0222/github-cicd-actions-images:latest
	docker.io/phongvo0222/github-cicd-actions-images:latest

	What's Next?
	  View a summary of image vulnerabilities and recommendations → docker scout quickview phongvo0222/github-cicd-actions-images
PS C:\Users\vhpho> docker images
	REPOSITORY                               TAG       IMAGE ID       CREATED         SIZE
	phongvo0222/github-cicd-actions-images   latest    a9c34f38ad07   8 minutes ago   524MB
PS C:\Users\vhpho> docker run -p 8080:8080 github-cicd-actions-images
	Unable to find image 'github-cicd-actions-images:latest' locally
	docker: Error response from daemon: pull access denied for github-cicd-actions-images, repository does not exist or may require 'docker login': denied: requested access to the resource is denied.
	See 'docker run --help'.
PS C:\Users\vhpho> docker run -p 8080:8080 phongvo0222/github-cicd-actions-images
	docker: Error response from daemon: Ports are not available: exposing port TCP 0.0.0.0:8080 -> 0.0.0.0:0: listen tcp 0.0.0.0:8080: bind: Only one usage of each socket address (protocol/network address/port) is normally permitted.
PS C:\Users\vhpho> docker run -p 8080:8080 phongvo0222/github-cicd-actions-images

	  .   ____          _            __ _ _
	 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
	( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
	 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
	  '  |____| .__|_| |_|_| |_\__, | / / / /
	 =========|_|==============|___/=/_/_/_/
	 :: Spring Boot ::                (v3.2.1)

	2024-01-10T21:54:37.443Z  INFO 1 --- [           main] c.p.g.GithubCicdActionsApplication       : Starting GithubCicdActionsApplication using Java 21 with PID 1 (/github-cicd-actions-images.jar started by root in /)
	2024-01-10T21:54:37.454Z  INFO 1 --- [           main] c.p.g.GithubCicdActionsApplication       : No active profile set, falling back to 1 default profile: "default"
	2024-01-10T21:54:39.375Z  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port 8080 (http)
	2024-01-10T21:54:39.409Z  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
	2024-01-10T21:54:39.410Z  INFO 1 --- [           main] o.apache.catalina.core.StandardEngine    : Starting Servlet engine: [Apache Tomcat/10.1.17]
	2024-01-10T21:54:39.481Z  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
	2024-01-10T21:54:39.483Z  INFO 1 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 1876 ms
	2024-01-10T21:54:40.115Z  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port 8080 (http) with context path ''
	2024-01-10T21:54:40.146Z  INFO 1 --- [           main] c.p.g.GithubCicdActionsApplication       : Started GithubCicdActionsApplication in 3.549 seconds (process running for 4.553)
	2024-01-10T21:55:21.172Z  INFO 1 --- [nio-8080-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
	2024-01-10T21:55:21.172Z  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
	2024-01-10T21:55:21.174Z  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 1 ms
```

