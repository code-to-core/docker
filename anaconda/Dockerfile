FROM ubuntu:16.04


RUN apt-get update && \
	apt-get install -y curl build-essential && \
	apt-get clean && \
	rm -rf /tmp/ /var/tmp/ /var/lib/apt/lists/*

RUN useradd -c 'Anaconda user' -m -d /home/anaconda -s /bin/bash anaconda

RUN mkdir /notebooks
RUN chown anaconda /notebooks

USER anaconda
ENV HOME /home/anaconda

RUN ( cd /home/anaconda && curl -sSL -o installer.sh https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh && \
	bash installer.sh -b -f && \
	rm installer.sh )

WORKDIR $HOME
ADD --chown=anaconda app $HOME

ENV PATH "$PATH:$HOME/anaconda3/bin"

EXPOSE 8888
VOLUME /notebooks
WORKDIR "/notebooks"

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

