## Reintroduction to proofs
[![Continuous Integration](https://github.com/SaiCharanMarrivada/Reintroduction-to-proofs/actions/workflows/lean.yml/badge.svg)](https://github.com/SaiCharanMarrivada/Reintroduction-to-proofs/actions/workflows/lean.yml)

My solutions to the [Reintroduction to proofs](https://adam.math.hhu.de/#/g/emilyriehl/reintroductiontoproofs) lean game. Most of the code uses term-mode proofs, except proofs for initial worlds ([type_world](./type_world) and [implication_world](./implication_world)) which use simple tactics like `assumption`,  `apply`.  

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
