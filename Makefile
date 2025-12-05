.PHONY: install lint format test typecheck pre-commit

install:
\tpip install -e ".[dev]"

lint:
\truff check physics-symmetry-discovery-jax tests

format:
\tblack physics-symmetry-discovery-jax tests
\truff check physics-symmetry-discovery-jax tests --fix-only

typecheck:
\tmypy symdisc

test:
\tpytest

pre-commit:
\tpre-commit run --all-files