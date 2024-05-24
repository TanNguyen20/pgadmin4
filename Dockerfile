# Use the official pgAdmin 4 image
FROM dpage/pgadmin4:latest

# Set environment variables for pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin

# Perform directory setup and permission changes as root
USER root
RUN mkdir -p /var/lib/pgadmin && \
    chown -R pgadmin:pgadmin /var/lib/pgadmin

# Switch to the pgadmin user
USER pgadmin

# Expose the port pgAdmin runs on
EXPOSE 80

# Command to start pgAdmin
CMD ["python3", "/pgadmin4/pgAdmin4.py"]
