PROD= docker-compose.prod.yml
DEV= docker-compose.yml

ENV=$(PROD)

DC = docker compose -f $(ENV)


.PHONY: setup
setup: pull build restart
	@echo "✅ Projekt został pomyślnie zaktualizowany i uruchomiony!"

.PHONY: up
up:
	@echo "🚀 Uruchamianie środowiska Docker..."
	$(DC) up -d

.PHONY: down
down:
	@echo "🛑 Zatrzymywanie kontenerów..."
	$(DC) down --remove-orphans

.PHONY: build
build:
	@echo "🔨 Budowanie projektu..."
	$(DC) build 

.PHONY: restart
restart: down up
	@echo "🔄 Restart kontenerów docker zakończony!"
	

.PHONY: pull
pull:
	@echo "📥 Pobieranie aktualizacji..."
	git pull
