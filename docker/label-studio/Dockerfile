FROM heartexlabs/label-studio:v1.5.0

COPY docker/label-studio/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]