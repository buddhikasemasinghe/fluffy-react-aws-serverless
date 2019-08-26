FROM node:alpine as builder

WORKDIR "/fluffy-react-aws"

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build


FROM mesosphere/aws-cli

COPY --from=builder /fluffy-react-aws/build .

CMD ["s3", "sync", "./", "s3://yet-another-react-app"]