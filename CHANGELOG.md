# Changelog

## [3.0.0](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/compare/v2.0.0...v3.0.0) (2026-11-22)


### ⚠ BREAKING CHANGES

* the ingress object and its qdrant-tls secret are gone; the host is now served by the Istio gateway.

### 🚀 New Features

* expose Qdrant through the Istio gateway instead of Traefik ([#8](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/issues/8)) ([4e071b5](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/commit/4e071b5467f2584b0aa49495ed9aa0e5d77fc4ce))

## [2.0.0](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/compare/v1.2.0...v2.0.0) (2026-11-20)


### ⚠ BREAKING CHANGES

* provider major bumps and a stricter Terraform baseline; consumers must run `terraform init -upgrade`.

### 🚀 New Features

* add namespace_labels variable to all modules ([07b7471](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/commit/07b7471a5e5bf719b1cf124109209b00eacad76f))
* upgrade charts, providers and Terraform baseline ([#5](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/issues/5)) ([3b702ea](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/commit/3b702ea9817184bca1226c2da9a0f3ba106fd630))


### 📦 CI Improvements

* run release-please with GITHUB_TOKEN ([#6](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/issues/6)) ([d08553d](https://github.com/gersonrs/modern-gitops-stack-module-qdrant/commit/d08553da1f24409b4f6386c4709d7d4c84a11fcd))

## [1.2.0](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/compare/v1.1.0...v1.2.0) (2025-02-08)


### 🚀 New Features

* add performance config by config ([9070cb0](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/9070cb03926f495a1637db76ad1063d26543b378))
* add performance config by env ([246f009](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/246f0094bb983bb93752f20bd0f524cb20506bd8))
* adjust ingress path ([e7a1b29](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/e7a1b296b831a9a2522e5da2452d1fab61772849))
* adjust resources ([36f5a5a](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/36f5a5a3be8df5fbcbe2d4c6a63507be2f054584))
* change version target and update ingress path ([c63fec8](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/c63fec884b1590315b98a07cda244367bb225e8b))


### 🔥 Bug Fixes

* change ingress path ([fef0318](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/fef03189d74f1e79a9baff8e567614ef77c6d704))
* fix syntax ([927d0b2](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/927d0b2bde50512ef04e21748c55e01d933a645e))


### ⌨️ Code Refactoring

* adjust workflows ([2cf673b](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/2cf673bc43e9e9186e6a5f754bf01c9c5acf63d9))
* try adjust code 5 ([19f892d](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/19f892d8b6c5fc361e0131bc9d6b393bf302447d))

## [1.1.0](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/compare/v1.0.0...v1.1.0) (2024-08-27)


### 🚀 New Features

* adjust repo ([48b744a](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/48b744a2585ec76f6586f336be2ade3c50df9de1))
* adjust repo ([6acec11](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/6acec115e96cdbbd17853b8f112130d3e76d9736))
* adjust tls secret name ([7d6e682](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/7d6e682e163ee403f4698db9dda1833ec8819962))
* config locals file ([005d57a](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/005d57a89d7d409b351e6b552ff373503c20d395))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([526031b](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/526031bf100e6152470404e045772f336d5937ee))
* **terraform-docs:** generate docs and write to README.adoc ([c44887b](https://github.com/GersonRS/modern-gitops-stack-module-qdrant/commit/c44887b6e5bedef7fbf8b43efd253560e8eca286))
