Gamebrary



Gamebrary is an open-source game library manager that helps you organize and track your game collection effortlessly. It provides a sleek and user-friendly interface to manage your games across multiple platforms. A docker image of this didnt exist so I built a simple deployment to track my retro videogame collection and not have to use excel or a paid app on my phone.

🚀 Features

🗂 Game Library Management – Easily add, organize, and search for games in your collection.

🔍 Game Metadata – Fetch game details, covers, and descriptions automatically.

☁ Cloud Sync – Sync your library across multiple devices.

🎮 Multi-Platform Support – Manage games from PC, console, and cloud services.

🔧 Customizable – Customize game categories, tags, and themes.

📊 Statistics & Insights – Track your playtime and completion progress.

📦 Installation

Using Docker

To run Gamebrary using Docker:

docker run -d \
  --name gamebrary \
  -p 3000:3000 \
  ghcr.io/tan-tan-san/gamebrary:latest

Once running, open http://localhost:3000 in your browser.

🏗️ Deployment with Kubernetes

To deploy Gamebrary in a Kubernetes cluster, use the following manifest:

apiVersion: apps/v1
kind: Deployment
metadata:
  name: gamebrary
  labels:
    app: gamebrary
spec:
  replicas: 1
  selector:
    matchLabels:
      app: gamebrary
  template:
    metadata:
      labels:
        app: gamebrary
    spec:
      containers:
        - name: gamebrary
          image: ghcr.io/tan-tan-san/gamebrary:latest
          ports:
            - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: gamebrary
spec:
  selector:
    app: gamebrary
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP

🛠️ Development

To run the project locally:

git clone https://github.com/Tan-tan-san/gamebrary.git
cd gamebrary
docker-compose up -d

📜 License

This project is licensed under the MIT License.

🤝 Contributing

We welcome contributions! To contribute:

Fork the repository.

Create a new branch (git checkout -b feature-branch).

Make your changes and commit them (git commit -m "Add new feature").

Push to your branch (git push origin feature-branch).

Create a Pull Request.

📬 Contact

For support or inquiries, feel free to reach out via:

GitHub Issues

Email: your-email@example.com

