from fastapi import FastAPI
from pydantic_models.chat_body import  ChatBody

from services.search_services import SearchServices
from services.sort_source_service import SortSourceService 

app = FastAPI() 

search_srvices = SearchServices()
sort_source_service = SortSourceService()

@app.post("/chat")
def chat_endpoint(body: ChatBody):
    
    search_results=search_srvices.web_search(body.query)
    #print(search_results)

    sorted_results=sort_source_service.sort_service(body.query, search_results)
    print(sorted_results)
    return body.query