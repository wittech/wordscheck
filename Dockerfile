# 可以换成ubuntu/debian等
FROM centos:7.9.2009

RUN mkdir "/svc"
WORKDIR "/svc"

ENV LANG en_US.UTF-8
COPY svc /svc/

# arm芯片服务器可以把执行文件换成wordscheck_arm64
RUN chmod +x /svc/wordscheck
ENTRYPOINT ["./wordscheck"]
