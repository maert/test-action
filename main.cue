package main

import (
  "dagger.io/dagger"
  "universe.dagger.io/docker"
)

dagger.#Plan & {
  actions: {
    deps: docker.#Build & {
      // ...
    }
  }
}
