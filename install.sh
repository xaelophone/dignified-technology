#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="dignified-technology"
SKILLS_DIR="$HOME/.claude/skills"
REPO_URL="https://github.com/xaelophone/dignified-technology.git"

# If run via curl (no local skill/ directory), clone first
if [ ! -d "skill" ]; then
  CLONE_DIR="$SKILLS_DIR/.dignified-technology-repo"

  if [ -d "$CLONE_DIR" ]; then
    echo "Updating existing clone..."
    git -C "$CLONE_DIR" pull --ff-only
  else
    echo "Cloning $REPO_URL..."
    git clone "$REPO_URL" "$CLONE_DIR"
  fi

  SKILL_SOURCE="$CLONE_DIR/skill"
else
  # Run locally from a cloned repo
  SKILL_SOURCE="$(cd skill && pwd)"
fi

mkdir -p "$SKILLS_DIR"

if [ -L "$SKILLS_DIR/$SKILL_NAME" ]; then
  echo "Removing existing symlink..."
  rm "$SKILLS_DIR/$SKILL_NAME"
fi

ln -s "$SKILL_SOURCE" "$SKILLS_DIR/$SKILL_NAME"
echo "Installed. Restart Claude Code and run /dignified-technology in any project."
