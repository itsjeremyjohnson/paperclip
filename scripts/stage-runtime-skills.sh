#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

for pkg_dir in server packages/adapters/claude-local packages/adapters/codex-local; do
  rm -rf "$repo_root/$pkg_dir/skills"
  cp -R "$repo_root/skills" "$repo_root/$pkg_dir/skills"
done
