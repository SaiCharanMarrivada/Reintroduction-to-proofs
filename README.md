## Reintroduction to proofs
My solutions to [reintroduction to proofs](https://adam.math.hhu.de/#/g/emilyriehl/reintroductiontoproofs) lean game. I tried to use proof terms instead of tactics directly whenever I can. The goal is to replace all tactic based proofs with 
term mode proofs. I am still learning, so I am cleaning up as I go.

## Building the Project

This project uses **Lean 4** and the **Lake** build system. Because it is built entirely from first principles, it features an incredibly lightweight workspace with zero external mathematical library dependencies (no Mathlib required!).

### Prerequisites

Ensure you have `elan` (the Lean version manager) installed on your system. 

* **Installation:** Follow the official step-by-step setup guide at [Lean deployment instructions for elan](https://leanprover-community.github.io/get_started.html).

The exact compiler version will be automatically resolved using the repository's local `lean-toolchain` file the moment you run a build command.

### Compilation

To compile and type-check the entire repository across all proof worlds:

1. Clear out any previous build caches:
   ```bash
   lake clean
   ```
2. Build and verify all the proofs 
    ```bash
    lake build
    ```
