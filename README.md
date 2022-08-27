# iTourism

<p align="center">
  <img src="./assets/branding/cod3rocket_logo.png" />
</p>

<h1 align="center">iTourism</h1>

<p align="center">
The guide will contain information about the main tourist attractions, hotels, restaurants, shops and other commercial establishments in the city.
</p>

<h3 align="center">
  <!-- Version -->
  <a href="https://github.com/cod3rocket/iTourism/releases">
    <img alt="Realeases url" src="https://img.shields.io/github/v/release/cod3rocket/iTourism?style=for-the-badge&labelColor=1C1E26&color=1764a3">
  </a>

 <!-- License -->
  <a href="./LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/license%20-MIT-1C1E26?style=for-the-badge&labelColor=1C1E26&color=1764a3">
  </a>

  <!-- Stars count -->
  <a href="https://github.com/cod3rocket/iTourism/stargazers" target="_blank">
    <img alt="" src="https://img.shields.io/github/stars/cod3rocket/iTourism?style=for-the-badge&labelColor=1C1E26&color=1764a3">
  </a>
</h3>

# Features

- 🚀 Cross-platform (Android, iOS)
- 🌎 Languages and custom languages

# How to use

## Requirements

- [docker](https://docs.docker.com/get-docker/) >= 20.10.0
- [docker-compose](https://docs.docker.com/compose/install/) >= 1.29
- [node](https://nodejs.org/en/download/) >= 16.17.0
- [pnpm](https://pnpm.io/installation) >= 7.x
- [just](https://github.com/casey/just#installation)
- [flutter](https://flutter.dev/docs/get-started/install) >= 3.0.0
- [melos](https://melos.invertase.dev/getting-started) >= 2.6.0

## Getting started

### 1. Clone the repository

```bash
git clone https://github.com/cod3rocket/iTourism.git
```

### 2. Install dependencies

```bash
pnpm install
```

### 3. Edit the .env file

```bash
cd apps/api

cp .env.example .env

cd ../..
```

### 4. Run the bootstrap script

```bash
pnpm bootstrap
```

### 5. Run the project

```bash
just start
```

### 6. Run database migrations and populate database

```bash
cd apps/api

pnpm prisma migrate dev

pnpm prisma db seed
```

## Authors

|[<img src="https://github.com/henriq4.png?size=150" width=150><br><sub>@henriq4</sub>](https://github.com/henriq4) | [<img src="https://github.com/eduardoteles17.png?size=150" width=150><br><sub>@eduardoteles17</sub>](https://github.com/eduardoteles17) |
|-|-|
