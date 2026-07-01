import Lake
open Lake DSL

package «proofs» where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩,
    ⟨`relaxedAutoImplicit, false⟩,
    ⟨`linter.unusedVariables, false⟩
  ]

@[default_target]
lean_lib «Proofs» where
  srcDir := "."
  -- We use `.submodules` to target only the files inside your folders!
  globs := #[
    .submodules `advanced_functional_world,
    .submodules `boolean_world,
    .submodules `classical_world,
    .submodules `conjunction_world,
    .submodules `coproduct_world,
    .submodules `dependent_world,
    .submodules `disjunction_world,
    .submodules `empty_world,
    .submodules `equality_world,
    .submodules `equivalence_world,
    .submodules `function_world,
    .submodules `implication_world,
    .submodules `natural_numbers_world,
    .submodules `negation_world,
    .submodules `product_world,
    .submodules `quantifier_world,
    .submodules `type_world
  ]
