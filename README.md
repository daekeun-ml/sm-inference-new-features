# SageMaker New Features Hands-on Lab

## 1. Multi-container Endpoint (Korean NLP models)

본 핸즈온은 [AWS AIML Blog](https://aws.amazon.com/ko/blogs/machine-learning/deploy-multiple-serving-containers-on-a-single-instance-using-amazon-sagemaker-multi-container-endpoints/)의 내용을 기반으로 MNIST 예제 대신 좀 더 실용적인 한국어 자연어 처리 예시를 다루며, 총 3종류(Sentiment Classification, KorSTS, KoBART)의 자연어 처리 모델을 SageMaker 다중 컨테이너 엔드포인트(Multi-container endpoint)로 배포하는 법을 익혀 봅니다.

이미 SageMaker 기본 개념(로컬 모드, 호스팅 엔드포인트)과 자연어 처리 & Huggingface을 다뤄 보신 분들은 Module 2만 진행하셔도 됩니다.

### Multi-container Endpoint Overview
SageMaker 멀티 컨테이너 엔드포인트를 사용하면 서로 다른 serving 스택(예: 모델 서버, 머신 러닝 프레임워크, 프레임워크 버전, 알고리즘 등)에 구축된 여러 추론 컨테이너를 하나의 엔드포인트에서 실행하고 독립적으로 각 추론 컨테이너를 호출할 수 있습니다. 

- 인스턴스의 전체 수용량을 포화시킬 정도의 트래픽이 없는 경우에 여러 모델(예: Object Detection, Named Entity Recognition)을 서빙
- A/B 테스트와 같은 시나리오에서 서로 다른 프레임워크 버전(예: TensorFlow 1.x vs. TensorFlow 2.x)에서 실행되는 유사한 아키텍처의 비교

### Hands-on Lab
- [Module 1](multi-container-endpoint/1_local_endpoint.ipynb): Check Inference Results & Local Mode Deployment (Optional) 
- [Module 2](multi-container-endpoint/2_multi-container-endpoint.ipynb): Multi-container Endpoint Deployment

### References
- AWS AIML Blog: https://aws.amazon.com/ko/blogs/machine-learning/deploy-multiple-serving-containers-on-a-single-instance-using-amazon-sagemaker-multi-container-endpoints/
- Developer Guide: https://docs.aws.amazon.com/sagemaker/latest/dg/multi-container-endpoints.html
  
<br>  

## 2. Asynchronous Inference (Instance Segmentation)

### Overview
본 예제 코드는 [AWS AIML Blog](https://aws.amazon.com/ko/blogs/machine-learning/run-computer-vision-inference-on-large-videos-with-amazon-sagemaker-asynchronous-endpoints/)에 공개된 예제 코드를 기반으로 자체적으로 아래 개선점들을 반영하였습니다.

- OpenCV 프로세싱 오류 수정
- 로컬 환경 디버깅 예시 및 로컬 모드 예시 추가
- 추론 결괏값 처리 및 시각화 로직 추가
- 마이너 버그 개선

### Hands-on Lab
- [Module 1](async-inference-cv.ipynb/async-inference-cv.ipynb.ipynb): Amazon SageMaker Asynchronous Endpoints - Computer Vision

### References

- AWS AIML Blog: https://aws.amazon.com/ko/blogs/machine-learning/run-computer-vision-inference-on-large-videos-with-amazon-sagemaker-asynchronous-endpoints/
- GitHub: https://github.com/aws-samples/amazon-sagemaker-asynchronous-inference-computer-vision
- Developer Guide: https://docs.aws.amazon.com/sagemaker/latest/dg/async-inference.html

## License Summary

This sample code is provided under the MIT-0 license. See the LICENSE file.