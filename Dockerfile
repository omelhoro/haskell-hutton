FROM haskell:7.10.3
WORKDIR /app
COPY ./ /app
RUN stack test
