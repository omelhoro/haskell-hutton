FROM haskell
WORKDIR /app
COPY ./ /app
RUN stack test
