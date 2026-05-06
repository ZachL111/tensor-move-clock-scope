# Review Journal

I treated `tensor-move-clock-scope` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 169, lane `ship`
- `stress`: `move ordering`, score 133, lane `watch`
- `edge`: `search width`, score 180, lane `ship`
- `recovery`: `endgame risk`, score 201, lane `ship`
- `stale`: `position pressure`, score 154, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
