#!/bin/bash
curl -H 'Content-type: application/json' -d '{"title": "'"$TITLE"'", "text": "'"$TEXT"'"}' "$TEAM_CHANNEL_URL"
