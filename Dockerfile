FROM tianon/wine:5

ENV WINEARCH=win32
ENV WINEDEBUG=-all

VOLUME [ "/app/game" ]
COPY d2mapapi/ /app
WORKDIR /app

CMD ["wine", "d2mapapi.exe", "game"]
