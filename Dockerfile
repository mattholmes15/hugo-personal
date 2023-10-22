FROM klakegg/hugo:0.111.3-ext AS build
COPY . /src

FROM nginx:1.25.2
COPY --from=build /src/public /usr/share/nginx/html
