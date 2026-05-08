# notes

## What makes a "Good" CI/CD Pipeline?
* **Deterministic builds**. The same code should always produce the same build.
* **Fast builds.**. The faster the better. This makes getting bug fixes and new features out to users faster.
* **Portable**. This is why I love when the majority of a CI/CD pipeline is just `bash` scripts. It's easy to run locally, and it's easy to run on any CI/CD platform.
* **Fully automated**. The fewer manual steps, the better. It's really annoying to manually run database migrations and click buttons. It's also error-prone.
