FROM python:3.10-slim

WORKDIR /app

COPY pyproject.toml /app/
RUN pip install --upgrade pip && pip install .

COPY . /app

CMD ["python", "src/analysis.py"]