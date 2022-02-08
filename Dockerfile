FROM python:3.10-slim-bullseye

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN python -m pip install -r requirements.txt

COPY app.py /app/

EXPOSE 3000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

