FROM public.ecr.aws/lambda/python:3.8
COPY requirements.txt ./
RUN python -m pip install -r requirements.txt -t .
COPY yolov3.cfg yolov3.weights coco.names dog.jpg  ./
COPY app.py ./
CMD ["app.lambda_handler"]