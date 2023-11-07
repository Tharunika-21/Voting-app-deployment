server 
{
    listen 80;
    server_name localhost;  # You can use the IP address or domain if applicable

    location /votingapp {
        proxy_pass http://localhost:30004;  # Use the NodePort (30004) for the votingapp
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }

    location /resultapp {
        proxy_pass http://localhost:30005;  # Use the NodePort (30005) for the resultapp
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
# You can add more location blocks for other paths or services as needed
}
