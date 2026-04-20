# Changelog

## [2.0.0] - 2026-04-20

### BREAKING CHANGES

- **azurerm provider**: Minimum provider version updated from `>= 2.30.0, < 4.0.0` to `~> 4.0`. This module now requires azurerm provider v4.x.
- **Terraform version**: Minimum required Terraform version updated from `>= 1.0.0` to `>= 1.3.0` (required by azurerm v4 and `optional()` type modifier).
- **Provider configuration**: The `features {}` block is no longer required in azurerm v4.x. Example provider configurations have been updated accordingly.
- **Variable `rgs`**: The `tags` attribute is now optional (defaults to `{}`). Existing configurations that explicitly pass `tags` will continue to work without changes.

### Added

- Support for the `managed_by` optional attribute in the `rgs` variable, allowing specification of the resource or application that manages the Resource Group.

### Changed

- Updated `outputs.tf` to use modern splat syntax (`[*]`) instead of deprecated legacy syntax (`.*`).
- Updated module version tag in `locals.tf` to `v2.0.0`.
- Renamed all workflow files from `.yml` to `.yaml` extension.
- Updated CI workflow tool versions:
  - `hashicorp/setup-terraform`: v3.0.0 → v4.0.0
  - Terraform: 1.1.7 → 1.14.8
  - TFLint: v0.35.0 → v0.61.0
  - TFSec: v1.15.2 → v1.28.14
  - `terraform-docs/gh-actions`: v1 → v1.4.1
- Updated PR Labeler action from v4.1.1 to v5.0.0.
- Updated `.pre-commit-config.yaml`:
  - `pre-commit-terraform`: v1.64.1 → v1.105.0
  - Replaced deprecated `terraform_tfsec` hook with `terraform_trivy`.
- Fixed workflow name typo: "Continuos Integration" → "Continuous Integration".
- Fixed CI build status badge URL in README.md.
- Updated maintenance year badge from 2021 to 2026.

### Removed

- Removed stale `tflint-ruleset-azurerm` binary from `.tflint.d/plugins/` (now downloaded via `tflint --init`).

### Fixed

- Renamed `.tflint.hd` to `.tflint.hcl` (correct TFLint config file extension).
- Added explicit `version` and `source` to the `plugin "azurerm"` block in `.tflint.hcl`.
- Added `.tflint.d/` to `.gitignore` so plugin binaries are not committed.