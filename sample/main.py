from .utility import setup
from fastapi import FastAPI, Response
import uvicorn
import logging
import json

api     = FastAPI() 
logger  = logging.getLogger()

# @api.get("/")
# def root():
#   message = {"message": "Hello World!"}
#   logger.info(message)
#   return Response(
#     content=json.dumps(message), 
#     media_type="application/json"
#   )

@api.get("/heartbeat")
def heartbeat():
  return "Ok"

def app():
  logger.info("Starting API")
  uvicorn.run(
    app="sample.main:api", 
    host="0.0.0.0", 
    port=8000,
    reload=True
  )

if __name__ == "__main__":
  app()
