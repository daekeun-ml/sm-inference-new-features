# Deploy Serverless endpoint - Korean NLP (Sentiment Classification for Naver Movie corpus)

## How to Run
1. 여러분의 로컬 개발 환경에서 아래 쉘스크립트를 실행하세요.
```
./build_docker.sh kornlp-nsmc
```
2. (Optional) 로컬 환경에서 Lambda 함수를 테스트하세요.
3. SageMaker 노트북을 런칭한 다음, `serverless-endpoint-kornlp.ipynb`를 실행하세요.