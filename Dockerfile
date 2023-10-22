FROM hugomods/hugo:exts as builder
# Base URL
ARG HUGO_BASEURL=
ENV HUGO_BASEURL=${HUGO_BASEURL}
# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo

###############
# Final Stage #
###############
FROM hugomods/hugo:nginx
COPY --from=builder /src/public /site
