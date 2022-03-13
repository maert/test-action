// main.cue
package main

import (
	"dagger.io/dagger"
	"universe.dagger.io/bash"
	"universe.dagger.io/alpine"
)


dagger.#Plan & {
	actions: { 
    		// Pull and build alpine container with bash
		_image: alpine.#Build & {
			packages: {
				bash: _
			}
		}

		// Hello World Dagger
		hello: bash.#Run & {
			input: _image.output
			script: contents: "echo Hello World"
		}
	}
}
