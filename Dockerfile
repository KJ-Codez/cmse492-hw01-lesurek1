FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml /app/
RUN pip install --upgrade pip && pip install .

COPY . /app

CMD ["python", "src/analysis.py"]