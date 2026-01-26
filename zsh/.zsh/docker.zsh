# ==================================================
# Docker / Docker Compose
# ==================================================

# ------------------------------
# Aliases (comandos simples)
# ------------------------------
alias dps='docker ps'
alias dcup='docker compose up -d'
alias dcdown='docker compose down'
alias dclogs='docker compose logs -f'
alias dcps='docker compose ps'

# ------------------------------
# Functions (lógica composta)
# ------------------------------

# Restart seguro do compose
dc-restart() {
  echo "🔄 Restarting Docker Compose..."
  docker compose down || return 1
  docker compose up -d
}

# Restart com rebuild (ideal p/ .NET)
dc-rebuild() {
  echo "♻️ Rebuilding Docker Compose (no cache)..."
  docker compose down || return 1
  docker compose build --no-cache || return 1
  docker compose up -d
}

# Logs de um serviço específico
# uso: dc-logs api
dc-logs() {
  if [[ -z "$1" ]]; then
    echo "❌ Service name required"
    return 1
  fi

  docker compose logs -f "$1"
}

