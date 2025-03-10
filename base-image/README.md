# Dockerfile for Angular E2E Testing with Cypress

This image is designed for running end-to-end (E2E) tests on Angular projects using [Cypress](https://docs.cypress.io/app/component-testing/angular/overview). The image includes all necessary dependencies and configurations to execute E2E tests in a headless environment.

## Usage
1. Ensure your angular project has Cypress set up and contains a `cypress.config.ts` file at the root.
2. Run the image:
    ```sh
    docker run --rm -v $PATH_TO_ANGULAR_PROJECT:/app angular-cypress sh -c "npm run e2e"
    ```