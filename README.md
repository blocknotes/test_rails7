# Test Rails7

Features:
- messages API for a [test client app](https://github.com/blocknotes/test_alpinejs)
- GitHub action on push:
  + build the Docker image
  + send it to Docker Hub
  + trigger Cypress tests on [test_cypress](https://github.com/blocknotes/test_cypress)
