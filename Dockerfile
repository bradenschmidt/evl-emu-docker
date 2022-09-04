FROM python:3.10-alpine

# TODO
ARG RUN_PARAMS='--console'
ENV RUN_PARAMS ${RUN_PARAMS}

ADD requirements.txt /

RUN pip install -r requirements.txt

ADD evl-emu.py /

CMD [ "python", "./evl-emu.py", "--console" ]