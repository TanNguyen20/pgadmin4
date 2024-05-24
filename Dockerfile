# Use the official pgAdmin 4 image
FROM dpage/pgadmin4:latest

# Set environment variables for pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin

# Run commands as root
USER root

# Create necessary directories and set permissions
RUN mkdir -p /var/lib/pgadmin && \
    chown -R 5050:5050 /var/lib/pgadmin

# Switch to the default user (5050:5050 is typically the pgadmin user in this image)
USER 5050

# Expose the port pgAdmin runs on
EXPOSE 80

# Command to start pgAdmin
CMD ["python3", "/pgadmin4/pgAdmin4.py"]
