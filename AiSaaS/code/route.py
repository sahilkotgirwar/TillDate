from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
from openai import OpenAI
import os

app = FastAPI()


client = OpenAI(api_key="")


instruction_message = {
    "role": "system",
    "content": "You are a code generator. You must answer only in markdown code snippets. Use code comments for explanation."
}

def authenticate_user(req: Request):
    
    user_id = req.headers.get("")
    if not user_id:
        raise HTTPException(status_code=401, detail="Unauthorized")
    return user_id


@app.post("/port")
async def port(req: Request):
    try:
        # Authentication
        user_id = authenticate_user(req)

        body = await req.json()
        messages = body.get("messages")

        if not messages:
            raise HTTPException(status_code=400, detail="Messages are required")

        
        chat_completion = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=messages
        )

        
        response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[instruction_message, *messages]
        )

        
        return JSONResponse(content={"message": chat_completion.choices[0].message})

    except Exception as e:
        print("[CODE_ERROR]", e)
        raise HTTPException(status_code=500, detail="Internal Server Error")
