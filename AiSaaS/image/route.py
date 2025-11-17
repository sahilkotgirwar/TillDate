from fastapi import FastAPI, Request, HTTPException
from fastapi.responses import JSONResponse
from openai import OpenAI

app = FastAPI()

# OpenAI client
client = OpenAI(api_key="")


def authenticate_user(req: Request):
   
    auth_header = req.headers.get("Authorization")

    if not auth_header or not auth_header.startswith("Bearer "):
        raise HTTPException(status_code=401, detail="Unauthorized")

    return True


@app.post("/generate-image")
async def generate_image(req: Request):
    try:
        authenticate_user(req)

        body = await req.json()
        prompt = body.get("prompt")
        amount = body.get("amount", 1)
        resolution = body.get("resolution", "512x512")

        # Validation (same as your JS code)
        if not prompt:
            raise HTTPException(status_code=400, detail="Prompt is required")

        if not amount:
            raise HTTPException(status_code=400, detail="Amount is required")

        if not resolution:
            raise HTTPException(status_code=400, detail="Resolution is required")

        # OpenAI image generation
        response = client.images.generate(
            model="gpt-image-1",
            prompt=prompt,
            n=int(amount),
            size=resolution
        )

        return JSONResponse(content=response.data)

    except Exception as e:
        print("[IMAGE_ERROR]", e)
        raise HTTPException(status_code=500, detail="Internal Server Error")
