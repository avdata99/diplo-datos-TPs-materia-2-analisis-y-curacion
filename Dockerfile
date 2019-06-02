FROM continuumio/anaconda3
EXPOSE 8888

RUN conda install -y ftfy
RUN mkdir /APP
COPY . /app
RUN cat /app/msg.txt

CMD ["jupyter", "lab", "--notebook-dir=/app", "--ip='0.0.0.0'", "--port=8888", "--allow-root"]
# jupyter lab /app/analisis-y-curacion.ipynb --notebook-dir=/app --ip='0.0.0.0' --port=8888 --allow-root
# "/app/analisis-y-curación.ipynb.ipynb", \

# CMD ["jupyter", "notebook", "/app/analisis-y-curación.ipynb.ipynb" "--ip='0.0.0.0'", "--port=8888", "--allow-root"]

