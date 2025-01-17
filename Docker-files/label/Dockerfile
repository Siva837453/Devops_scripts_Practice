# FROM almalinux:9
# RUN dnf install nginx -y
# LABEL course="Docker"\
#       duration="100hrs"\
#       student="Siva"
# EXPOSE 80
# ENV subject="Devops"\
#     Class="Btech"
# CMD [ "nginx","-g","daemon off;" ] 

# FROM almalinux:9
# ENTRYPOINT [ "ping","-c5" ]
# CMD [  "google.com"] 

FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html

