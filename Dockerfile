#base-image
FROM amazoncorretto:17
# image meta 정보
LABEL maintainer="ohd7150<ohd7150@nate.com>"

# build 시 사용할 변수 선언
ARG JAR_FILE_PATH=build/libs/*.jar
# 생성 할 imagedml / 디렉토리에 파일 복사
COPY ${JAR_FILE_PATH} app.jar
#container 구동시 실행할 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
