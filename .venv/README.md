# Python Agent Virtual Environment (.venv)

This folder is the location of the Python virtual environment used by the agent.
Do not commit the full environment; instead commit configuration and dependency files.

## Setup
```
python -m venv .venv
.venv\\Scripts\\Activate.ps1  # Windows PowerShell
pip install -r requirements.txt
```

## Configuration
- Manifest: `.venv/agent-config.json` (runtime and expected packages)
- Environment: `.env` (see `.env.example`)
- Dependencies: `requirements.txt` (at repo root)
