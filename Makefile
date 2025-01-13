# Floccus Makefile

.PHONY: all build test watch lint clean release

# 默认目标
all: build

# 安装nvm
install-nvm:
	brew install nvm

# 安装node
install-node:
	nvm install -lts

# 安装依赖
install:
	npm install

# 构建项目
build:
	npm run build

# 构建发布版本
release:
	npm run build-release

# 运行测试
test:
	npm run test

# 开发模式观察文件变化
watch:
	npm run watch

# 运行代码检查
lint:
	npm run lint

# 自动修复代码风格问题
lint-fix:
	npm run lint:fix

# 打包
package:
	rm -rf tusibook
	mkdir -p tusibook
	cp -r dist tusibook/
	cp -r _locales tusibook/
	cp -r icons tusibook/
	cp -r img tusibook/
	cp -r manifest.json tusibook/

# 清理构建文件
clean:
	rm -rf dist/
	rm -rf build/
