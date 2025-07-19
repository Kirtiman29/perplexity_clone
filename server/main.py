import asyncio
from fastapi import FastAPI, WebSocket
from pydantic_models.chat_body import  ChatBody

from services.llm_service import LLMService
from services.search_services import SearchServices
from services.sort_source_service import SortSourceService 

app = FastAPI() 

search_srvices = SearchServices()
sort_source_service = SortSourceService()

llm_services = LLMService()


#chat websocket 
@app.websocket("/ws/chat")

async def websocket_chat_endpoint(websocket:WebSocket):
    await websocket.accept()

    try:
        await asyncio.sleep(0.1)

        data = await websocket.receive_json()
        query = data.get("query")
        search_results=search_srvices.web_search(query)

        sorted_results=sort_source_service.sort_service(query, search_results)
        await asyncio.sleep(0.1)
        
        await websocket.send_json({
            "type": "search_results", "data":sorted_results
        })

        for chunk in llm_services.generate_responce(query, sorted_results):
            await asyncio.sleep(0.1)
            await websocket.send_json({"type":"content","data":chunk})
        
    except:
        print("Unexpected error occured ")
    finally:
        await websocket.close()


@app.post("/chat")
def chat_endpoint(body: ChatBody):
    
    search_results=search_srvices.web_search(body.query)
    #print(search_results)

    sorted_results=sort_source_service.sort_service(body.query, search_results)
    #print(sorted_results)

    responce = llm_services.generate_responce(body.query, sorted_results)
    return responce