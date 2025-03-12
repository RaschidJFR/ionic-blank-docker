# Ionic Blank Docker Image
This repository is intended to create a set of ionic blank projects to do E2E testing with Cypress. 

## Image Content
* The image contains an Ionic-Angular project in `/app`.
* The image includes the npm packages `@angular/cli`, `cypress`, and `wait-on` installed globally.

## Usage
Sample usage:

```sh
docker run \
  --rm \
  -v "$ANGULAR_PROJECT_PATH:/project" \
  raschidjfr/ionic-blank:ionic8-angular19-cypress14 \
  bash -c "\
    mkdir cypress \
    && cp -r /project/cypress/* ./cypress \
    && cp /project/cypress.config.ts . \
    && cp -r /project/src/app/home/* ./src/app/home \
    && ng serve --host 0.0.0.0 --port 4200 \
    & (wait-on http://0.0.0.0:4200 && cypress run --headless) \
    || { echo 'Angular server failed to start'; exit 1; }"
```
### Considerations
* Both a `cypress.config.ts` file and a `cypress/` folder must exist in the root of the angular project.