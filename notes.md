# notes

## What makes a "Good" CI/CD Pipeline?
* **Deterministic builds**. The same code should always produce the same build.
* **Fast builds.**. The faster the better. This makes getting bug fixes and new features out to users faster.
* **Portable**. This is why I love when the majority of a CI/CD pipeline is just `bash` scripts. It's easy to run locally, and it's easy to run on any CI/CD platform.
* **Fully automated**. The fewer manual steps, the better. It's really annoying to manually run database migrations and click buttons. It's also error-prone.


## Review
Congratulations on deploying a full-stack web application to the public internet!

Remember to shut down your notely project in GCP when you're done playing with it, to reduce extra bank charges.

Remember to delete your Turso database as well.

### Recap of Your Accomplishments:
You set up a continuous integration pipeline with GitHub Actions that ensures new PRs pass certain checks before they are merged to main:
* Unit tests pass
* Formatting checks pass
* Linting checks pass
* Security checks pass

You configured a cloud-based SQLite database hosted on Turso

You set up a continuous deployment pipeline with GitHub Actions that does the following whenever changes are merged into main:
* Builds a new server binary
* Builds a new Docker image for the server
* Pushes the Docker image to the Google Artifact Registry
* Deploys a new Cloud Run revision with the new image and serves the app to the public internet
Pat yourself on the back! That's a pretty robust setup for our simple CRUD app.

### Some Things to Keep in Mind
*  Google Cloud Platform (GCP) is just one of the 3 major cloud providers. AWS and Azure are also popular choices. In many ways, their offerings are similar, but sometimes the differences matter.
*  Google Cloud Run handles a lot of complexity for you. Managing DNS, SSL, load balancing, and auto-scaling are all things that many companies do manually, so those are still useful skills to have, but are outside the scope of this course.
*  Turso is a fully-managed third-party database host. There are many options out there for databases and database hosting that are worth learning about, but again, outside the scope of this course.
*  Essentially every technology/product we used in this course has viable alternatives. You don't need to know how to use all of them before your first job, but you should understand some of them.
