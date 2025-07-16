
from config import Settings
settings = Settings()

class SearchServices:
    def web_search(self,query: str):
        print(Settings().TAVILY_API_KEY)