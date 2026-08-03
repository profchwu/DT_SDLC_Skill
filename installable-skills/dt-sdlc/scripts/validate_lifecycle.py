from __future__ import annotations

import sys
from pathlib import Path


REQUIRED_COMPLETION_MARKERS = (
    "dt_handoff: approved",
    "sdlc_release: approved",
    "final_acceptance: approved",
)


def main() -> int:
    if len(sys.argv) != 2:
        print("usage: validate_lifecycle.py <project-state.yaml>", file=sys.stderr)
        return 2
    path = Path(sys.argv[1])
    if not path.exists():
        print(f"missing state file: {path}", file=sys.stderr)
        return 2
    text = path.read_text(encoding="utf-8")
    missing = [marker for marker in REQUIRED_COMPLETION_MARKERS if marker not in text]
    if missing:
        print("lifecycle incomplete")
        for marker in missing:
            print(f"- missing: {marker}")
        return 1
    print("lifecycle gates complete")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
