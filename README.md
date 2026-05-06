# tensor-move-clock-scope

`tensor-move-clock-scope` treats chess and game engines as a local verification problem. The Elixir implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Tensor Move Clock Scope Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## What This Is For

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## Project Layout

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Useful Pieces

- Includes extended examples for turn flow, including `recovery` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Architecture Notes

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying chess and game engines behavior without needing a service or database unless the language project itself is SQL. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Tooling

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Case Study

`boundary` is the first example I would inspect because it lands on the `review` path with a score of 72. The broader file also keeps `degraded` at -101 and `recovery` at 192, which gives the model a useful low-to-high spread.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Expansion Ideas

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Scope

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.
