from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
from openai import OpenAI

app = FastAPI()

# Initialize OpenAI client
client = OpenAI(api_key="")


def authenticate_user(req: Request):
   
    auth_header = req.headers.get("Authorization")

    if not auth_header or not auth_header.startswith("Bearer "):
        raise HTTPException(status_code=401, detail="Unauthorized")

    
    return True


@app.post("/chat")
async def chat(req: Request):
    try:
        authenticate_user(req)

        body = await req.json()
        messages = body.get("messages")

        if not messages:
            raise HTTPException(status_code=400, detail="Messages are required")

        
        completion = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=messages
        )

        return JSONResponse(content={
            "response": completion.choices[0].message
        })

    except Exception as e:
        print("[BACKEND_ERROR]", e)
        raise HTTPException(status_code=500, detail="Internal Server Error")
