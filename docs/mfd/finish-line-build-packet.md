---
title: Mapped-Frontier Build Packet - libobs-sharp finish line
status: draft
owner: lancer1977
issue: None (no tracking issue available)
created: 2026-11-01
updated: 2026-11-01
---

# Mapped-Frontier Build Packet: libobs-sharp finish line

## Intent

C# wrapper for libobs (fork of ilosvideos/libobs-sharp). This packet records the repository's finish-line scope from open issues as of 2026-11-01: what remains, what blocks it, and the merge policy. Non-goals: no code, secret, auth, workflow or infrastructure change is made by this packet.

## Acceptance criteria

- [ ] Owner records the product role for this repository (keep, adopt CI, or archive).
- [ ] `.mfd/project.yaml` and the merge policy below stay in sync.

## Current behavior

- Integration branch: `master`; protected branch: `master`.
- Validate runs on windows-latest (GitHub-hosted); hosted-runner budget is exhausted portfolio-wide, so the check may not run. Issues are disabled on this repo.

## Behavior map

Not applicable: repository-level finish-line packet. Feature behavior maps belong in per-issue packets.

## UI proof

Not applicable: docs-only packet.

## Technical contract

Unchanged. Any change to auth, secrets, workflows, deploy or infrastructure paths escalates to the owner (see `escalate_paths` in `.mfd/project.yaml`).

## Verification map

| Requirement | Scenario | Validation | Expected evidence |
| --- | --- | --- | --- |
| unit tier | PR to `master` | `None` | Not in CI |
| integration tier | PR to `master` | `./scripts/validate.sh` | validate |
| automation tier | PR to `master` | `./scripts/validate.sh` | validate |

## Per-project merge policy

- Required checks: `validate`
- Integration branch: master
- Protected branch: master

| Test tier | Command | Required | CI job name |
| --- | --- | --- | --- |
| Unit | `None` | No | None |
| Integration | `./scripts/validate.sh` | Yes | validate |
| Automation | `./scripts/validate.sh` | Yes | validate |

Checks observed in workflow files on `master`:

- `validate` from Validate (validate.yml) (every push/pull_request; windows-latest)

## Delivery map

| Order | GitHub issue / card | Requirement / scenario | Dependencies | Validation |
| --- | --- | --- | --- | --- |
| 1 | None | Owner role decision | None | None |

### Rollout and rollback

Docs-only. Roll back by reverting the packet commit. Deploys, if any, are out of scope and need separate owner approval.

### Blockers

| Blocker | Owner | Unblock condition |
| --- | --- | --- |
| None recorded | Owner | None |

### Future requirements

- Secrets: None
- Infrastructure: Windows runner (self-hosted or hosted budget)
- Hardware: None

### Open decisions

| Decision | Options | Recommendation |
| --- | --- | --- |
| Enable issues or keep as a passive fork? | Enable / passive | Keep passive; track work elsewhere (open) |

## Approval

- Product owner: lancer1977
- Decision: Pending
- Date: Pending
- Approved commit or immutable revision: Pending
- Approval evidence: Pending
- Approval brief: Pending

## Deviations

| Date | Requirement / boundary | Decision | Approver | Follow-up |
| --- | --- | --- | --- | --- |
| None | None | None | None | None |

## Release controls and closeout evidence

- Target branch: `master`
- Pull request: Pending
- Required reviewers: lancer1977
- CI and validation evidence: Pending

### Deployment contract

- Deployment applicability: Not applicable: docs-only packet; deployments need separate owner approval
- Target environments: None
- Deployment authority (separate from approval): lancer1977
- Source commit: Not applicable
- Immutable artifact / digest: Not applicable
- Rollout record: Not applicable
- Authenticated smoke proof: Not applicable
- Rollback target: Not applicable

### Release closeout record

- Live verification result: Not applicable
- Deferred drift / follow-up issue: None
