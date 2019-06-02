FROM continuumio/anaconda3
EXPOSE 8888

RUN conda install -y ftfy
RUN mkdir /APP
COPY . /app
RUN cat /app/msg.txt

CMD ["jupyter", "lab", "--notebook-dir=/app", "--ip='0.0.0.0'", "--port=8888", "--allow-root"]
