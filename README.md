# Инструмент развёртывания
vsm-conductor-trainer-build / Обучающее приложение для проводников ВСМ (Build)

Порядок автоматического развёртывания на OS Microsoft Windows (>10):
1. Убедиться в наличии скачанных инструментов: `git`, `python`, `uv`
2. Выполнить клонирование данного репозитория
3. Запустить `start.bat`

Ручное развёртывание:
1. Клонировать все организационные репозитории ( [Backend](https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-backend.git) [Frontend](https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-frontend.git) [Docs](https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-docs.git) )
2. При необходимости установить в корень backend приложения `app.db` синтетические данные и сценарии из [страницы релизов](https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-backend/releases/tag/SDB-1)
3. Переместить `static` из frontend приложения в backend
4. Запустить `uvicorn` backend приложение (например с помощью команды `uv run uvicorn app.main:application --reload --port 80 --host 127.0.0.1` )
