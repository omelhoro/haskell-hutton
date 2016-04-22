FROM haskell
COPY ./ /app
WORKDIR /app
RUN stack test
