FROM ubuntu
RUN apt update -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip install --upgrade pip
RUN apt-get install libgl1 -y
RUN apt install tesseract-ocr -y
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 4000
ENTRYPOINT [ "python3" ]
CMD ["app.py" ]
