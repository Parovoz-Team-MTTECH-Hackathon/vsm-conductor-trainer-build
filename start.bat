mkdir dists
mkdir dists/backend
mkdir dists/frontend
mkdir dists/docs
git clone https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-backend.git dists/backend
git clone https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-frontend.git dists/frontend
git clone https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-docs.git dists/docs
xcopy dists\backend .\ /E /H /C /I /Y
mkdir static
xcopy dists\frontend\static static /E /H /C /I /Y
curl -o app.db https://github.com/Parovoz-Team-MTTECH-Hackathon/vsm-conductor-trainer-backend/releases/download/SDB-1/synthetic_app.db
uv run uvicorn app.main:application --reload --port 80 --host 127.0.0.1
