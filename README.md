# tensor-move-clock-scope

`tensor-move-clock-scope` is a compact Elixir repository for chess and game engines, centered on this goal: Build an Elixir toolkit that studies clock behavior through layout fixtures, with stable geometry snapshots and no production deployment claims.

## Why This Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Tensor Move Clock Scope Review Notes

For a quick review, compare `endgame risk` with `move ordering` before reading the middle cases.

## Capabilities

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/tensor-move-clock-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 201, which lands in `ship`. The most cautious case is `stress` at 133, which lands in `watch`.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
