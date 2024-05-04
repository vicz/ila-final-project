FROM alpine:3.19

# Disables stdout and sterr output, persist in running container
ENV PYTHONUNBUFFERED 1

RUN apk add python3 py3-pip && addgroup webapp && adduser -D -G webapp webapp

RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED

USER webapp

WORKDIR /app
COPY app.py requirements.txt ./

# RUN python3 -m venv .venv
# RUN . .venv/bin/activate && pip3 install -r requirements.txt
RUN pip3 install --no-cache-dir  -r requirements.txt

# --break-system-packages?

CMD [ "python", "app.py" ]
EXPOSE 5000
