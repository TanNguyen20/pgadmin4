# Use the official pgAdmin 4 image
FROM dpage/pgadmin4:latest

# Set environment variables for pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin

# Switch to root to perform setup tasks
USER root

# Ensure the necessary directories are created and set correct permissions
RUN mkdir -p /var/lib/pgadmin /var/log/pgadmin /var/run/pgadmin && \
    chown -R pgadmin:pgadmin /var/lib/pgadmin /var/log/pgadmin /var/run/pgadmin

# Ensure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Switch to the pgadmin user
USER pgadmin

# Expose the port pgAdmin runs on
EXPOSE 80

# Command to start pgAdmin
CMD ["/entrypoint.sh"]
