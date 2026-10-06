#!/usr/bin/env bash
# skills.sh - Helper script to install or update agent skills in .agents/skills/

SKILLS_DIR=".agents/skills"

mkdir -p "$SKILLS_DIR"

if [ -z "$1" ]; then
  echo "Usage: ./skills.sh <skill-name-or-package>"
  echo "Example: ./skills.sh @agentic/unit-tests"
  exit 1
fi

echo "Installing skill '$1' into $SKILLS_DIR..."
npx -y skills install "$1" --dir "$SKILLS_DIR"
