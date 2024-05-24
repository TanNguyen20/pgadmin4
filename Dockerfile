FROM dpage/pgadmin4:latest

# Set environment variables for pgAdmin
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com
ENV PGADMIN_DEFAULT_PASSWORD=admin

# Set the user to run the container
USER pgadmin

# Expose the port pgAdmin is running on
EXPOSE 80

# Command to start pgAdmin
CMD ["/entrypoint.sh"]
