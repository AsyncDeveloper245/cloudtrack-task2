FROM python

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip

RUN pip install -r reqs.txt

EXPOSE 5000

CMD ["python3","-m", "flask","run","--host=0.0.0.0"]
