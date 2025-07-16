from fastapi import FastAPI
from pydantic_models.chat_body import  ChatBody

from services.search_services import SearchServices


app = FastAPI() 

search_srvices = SearchServices()

@app.post("/chat")
def chat_endpoint(body: ChatBody):
    
    search_srvices.web_search(body.query)

    return body.query