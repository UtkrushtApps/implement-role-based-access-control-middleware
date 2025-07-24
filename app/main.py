from fastapi import FastAPI, Depends
from app.routers import reports

app = FastAPI()

app.include_router(reports.router, prefix="/reports")
