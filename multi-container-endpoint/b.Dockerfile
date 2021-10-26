# Pull the base image with python 3.8 as a runtime for your Lambda
FROM public.ecr.aws/lambda/python:3.8

# Copy the earlier created requirements.txt file to the container
COPY requirements.txt ./

# Install the python requirements from requirements.txt
RUN python3.8 -m pip install -r requirements.txt

COPY requirements.txt app.py ./
COPY model-nsmc ./model-nsmc 
RUN python -m pip install -r requirements.txt


CMD ["app.lambda_handler"]
